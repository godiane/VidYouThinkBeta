<?php
/**
 * Analyze API
 *
 * @author Diana Gonzales
 */
if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/constants.php';
require_once __DIR__ . '/include/caption.php';
require_once __DIR__ . '/include/sentiment.php';
require_once __DIR__ . '/include/comment.php';
require_once __DIR__ . '/include/utils.php';
require_once __DIR__ . '/include/config.php';

require_once __DIR__ . '/include/db/caption.php';
require_once __DIR__ . '/include/db/comment.php';
require_once __DIR__ . '/include/db/sentiment_rating.php';

session_start();

if(!$fgmembersite->CheckLogin()) {
    $fgmembersite->RedirectToURL("index.php");
    exit;
}

$htmlBody = <<<END
END;

$client = new Google_Client();
$client->setApplicationName("VidYouThink");
$client->setDeveloperKey("aeaf20d90cbba9de7f35c5e9c544b45f37fb5124");
$client->setClientId(YOUTUBE_OAUTH2_CLIENT_ID);
$client->setClientSecret(YOUTUBE_OAUTH2_CLIENT_SECRET);

$utils = new Utils();
$captionDB = new CaptionT();

/*
 * This OAuth 2.0 access scope allows for full read/write access to the
 * authenticated user's account and requires requests to use an SSL connection.
 */
$client->setScopes(GOOGLE_YT_API_SSL);
$redirect = filter_var((isset($_SERVER['HTTPS']) ? 'https://' : 'http://') . $_SERVER['HTTP_HOST'] .
	$_SERVER['PHP_SELF'], FILTER_SANITIZE_URL);
$client->setRedirectUri($redirect);
$client->setAccessType('offline');

$client->setHttpClient(new \GuzzleHttp\Client(array(
	'verify' => CA_CERT_LOCATION,
)));

// Define an object that will be used to make all API requests.
$youtube = new Google_Service_YouTube($client);

// Check if an auth token exists for the required scopes
$tokenSessionKey = 'token-' . $client->prepareScopes();

if (isset($_GET['code'])) {
	if (strval($_SESSION['state']) !== strval($_GET['state'])) {
		die('The session state did not match.');
	}

	$client->authenticate($_GET['code']);
	$_SESSION[$tokenSessionKey] = $client->getAccessToken();
	header('Location: ' . $redirect . '?' . $_SESSION['query']);
}

if (isset($_SESSION[$tokenSessionKey])) {
	$client->setAccessToken($_SESSION[$tokenSessionKey]);
	if ($client->isAccessTokenExpired()) {
	    $currentTokenData = json_decode($_SESSION[$tokenSessionKey]);
	    if (isset($currentTokenData->refresh_token)) {
	        $client->refreshToken($currentTokenData->refresh_token);
	    }
        $_SESSION[$tokenSessionKey] = $client->getAccessToken();
	}
}

// Check to ensure that the access token was successfully acquired.
if ($client->getAccessToken()) {
	$client->setHttpClient(new \GuzzleHttp\Client(array(
		'verify' => CA_CERT_LOCATION,
	)));
	// This code executes if the user enters an action in the form
	// and submits the form. Otherwise, the page displays the form above.
	if ($_SERVER['REQUEST_METHOD'] == 'GET') {
        $jsonStringDecode = $utils->base64UrlDecode($_SESSION['state']);
        $stateArr = json_decode($jsonStringDecode);

		$videoId = isset($_GET['videoId']) ? $_GET['videoId'] : $stateArr->videoId;
		$phrase = isset($_GET['phrase']) ? urldecode($_GET['phrase']) : urldecode($stateArr->phrase);

		try {
			// FIXME
			$filename = 'srt/' . $videoId . '.srt';
			if (!file_exists($filename)) {
				$captionId = getCaptionID($youtube, $videoId);
                if (!is_null($captionId)) {
                  $videoCaptionFile = getVideoCaption($youtube, $captionId);
                  file_put_contents($filename, $videoCaptionFile);
                }
			}

			$videoCaptionText = file_get_contents($filename);
            // TODO BUGGY
            $captionDB->set_video_id($videoId);
            $captionDB->set_caption($videoCaptionText);
            $captionDB->set_insert_user_id($_SESSION['id_of_user']);
            $captionDB->set_search_query_id($_SESSION['search_query_id']);
            $captionDB->InsertCaptionIntoDB();

			// print_r($video);
			if (empty($videoCaptionText)) {
				$htmlBody .= '<div class="alert alert-danger"><strong>Error:</strong> '.
					'Can\'t get video caption tracks.</div>';
			} else {
                $captionsHTML = parseCaption($videoId, $filename, $phrase);
                $captionsText = getCaptionsText($filename);

                $videoCommentThreads = getVideoCommentThreads($youtube, $videoId);
                $commentHTML = "";
                $commentText = "";
                $counter = 1;
                foreach ($videoCommentThreads as $videoCommentThread) {
                    $textOriginal = getTextOriginal($videoCommentThread);
                    $commentSentiment = getSentimentAnalysisJSON($textOriginal);
                    $commentSentimentHTML = $utils->format_sentiment(
                        $commentSentiment);
                    $commentHTML .= "<tr>";
                    $commentHTML .= '<td>' . $counter . '</td>';
                    $commentHTML .= '<td>' . $commentSentimentHTML . '</td>';
                    $commentHTML .= '<td>' . $textOriginal . '</td>';
                    $commentText .= $textOriginal;
                    $commentHTML .= "</tr>";

                    $commenterName = getCommentAuthor($videoCommentThread);
                    $ytCommentId = getCommentId($videoCommentThread);

                    // INSERT INTO DB Table
                    $commentDB = new CommentT();
                    $commentDB->set_video_id($videoId);
                    $commentDB->set_yt_comment_id($ytCommentId);
                    $commentDB->set_name($commenterName);
                    $commentDB->set_comment($textOriginal);
                    $commentDB->set_insert_user_id($_SESSION['id_of_user']);
                    $commentDB->set_search_query_id($_SESSION['search_query_id']);
                    $commentDB->InsertCommentIntoDB();

                    // TODO INSERT COMMENT_ID
                    $sentimentRatingDB = new SentimentRatingT();
                    $sentimentRatingDB->set_rating($commentSentiment);
                    $sentimentRatingDB->set_sentiment_type(
                        SENTIMENT_TYPE_COMMENT);
                    $sentimentRatingDB->set_video_id($videoId);
                    $sentimentRatingDB->set_type_id($ytCommentId);
                    $sentimentRatingDB->set_insert_user_id($_SESSION['id_of_user']);
                    $sentimentRatingDB->set_search_query_id($_SESSION['search_query_id']);
                    $sentimentRatingDB->InsertSentimentRatingIntoDB();

                    $counter++;
                }
                $tcSentiment = getSentimentAnalysisJSON($commentText);
                $sentimentRatingDB = new SentimentRatingT();
                $sentimentRatingDB->set_rating($tcSentiment);
                $sentimentRatingDB->set_sentiment_type(
                    SENTIMENT_TYPE_OVERALL_COMMENT);
                $sentimentRatingDB->set_video_id($videoId);
                $sentimentRatingDB->set_insert_user_id($_SESSION['id_of_user']);
                $sentimentRatingDB->set_search_query_id($_SESSION['search_query_id']);
                $sentimentRatingDB->InsertSentimentRatingIntoDB();

                // TODO INSERT SEARCH_QUERY_ID
                $phSentiment = getSentimentAnalysisJSON($phrase);
                $sentimentRatingDB = new SentimentRatingT();
                $sentimentRatingDB->set_rating($phSentiment);
                $sentimentRatingDB->set_sentiment_type(
                    SENTIMENT_TYPE_PHRASE);
                $sentimentRatingDB->set_video_id($videoId);
                $sentimentRatingDB->set_insert_user_id($_SESSION['id_of_user']);
                $sentimentRatingDB->set_search_query_id($_SESSION['search_query_id']);
                $sentimentRatingDB->InsertSentimentRatingIntoDB();

                // TODO INSERT CAPTION_ID
                $caSentiment = getSentimentAnalysisJSON($captionsText, null,
                    CAPTION);
                $sentimentRatingDB = new SentimentRatingT();
                $sentimentRatingDB->set_rating($caSentiment);
                $sentimentRatingDB->set_sentiment_type(
                    SENTIMENT_TYPE_CAPTION);
                $sentimentRatingDB->set_video_id($videoId);
                $sentimentRatingDB->set_insert_user_id($_SESSION['id_of_user']);
                $sentimentRatingDB->set_search_query_id($_SESSION['search_query_id']);
                $sentimentRatingDB->InsertSentimentRatingIntoDB();

                // TODO INSERT SEARCH_RESULTS_ID
                $overallSentiment = getOverallSentiment($tcSentiment,
                    $phSentiment, $caSentiment);
                $sentimentRatingDB = new SentimentRatingT();
                $sentimentRatingDB->set_rating($overallSentiment);
                $sentimentRatingDB->set_sentiment_type(
                    SENTIMENT_TYPE_OVERALL);
                $sentimentRatingDB->set_video_id($videoId);
                $sentimentRatingDB->set_insert_user_id($_SESSION['id_of_user']);
                $sentimentRatingDB->set_search_query_id($_SESSION['search_query_id']);
                $sentimentRatingDB->InsertSentimentRatingIntoDB();

                $videoDetails = $youtube->videos->listVideos('snippet,
                    statistics', array(
                        'id' => $videoId,
                ));

                $video = $videoDetails->items[0];

				$htmlBody .= '<div class="row">';
				$htmlBody .= '    <div class="col-md-12 bg-info">';
				$htmlBody .= '        <h1 class="text-primary text-center">'.$video->snippet->title.'</h1>';
				$htmlBody .= '    </div>';
				$htmlBody .= '    <div class="col-md-12 bg-danger">';
				$htmlBody .= '        <h1 class="text-center text-danger"><small>Overall Sentiment:</small> ' .
					$overallSentiment . '</h1>';
				$htmlBody .= '    </div>';
				$htmlBody .= '</div>';

				$htmlBody .= '<div class="row" style="padding: 2%">';
				$htmlBody .= '	<div class="col-md-4">';
				$htmlBody .= '		<h1 class="text-center"><small>Phrase:</small><br/>'.$utils->format_sentiment($phSentiment).
					'</h1>';
				$htmlBody .= '		<a id="modal-222550" href="#modal-container-222550" role="button" '.
					'class="btn btn-block btn-lg btn-danger" data-toggle="modal">Details</a>';
				$htmlBody .= '		<div class="modal fade" id="modal-container-222550" role="dialog" '.
					'aria-labelledby="myModalLabel" aria-hidden="true">';
				$htmlBody .= '			<div class="modal-dialog modal-lg" role="document">';
				$htmlBody .= '				<div class="modal-content">';
				$htmlBody .= '					<div class="modal-header">';
				$htmlBody .= '						<button type="button" class="close" data-dismiss="modal" '.
					'aria-hidden="true">';
				$htmlBody .= '							&#10006;';
				$htmlBody .= '						</button>';
				$htmlBody .= '						<h4 class="modal-title" id="myModalLabel">';
				$htmlBody .= '							Phrase';
				$htmlBody .= '						</h4>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-body">';
				$htmlBody .= '						<div class="table-responsive">';
				$htmlBody .= '							<table class="table table-striped">';
				$htmlBody .= '								<thead>';
				$htmlBody .= '									<tr>';
				$htmlBody .= '										<th>Phrase</th>';
				$htmlBody .= '										<th>Sentiment</th>';
				$htmlBody .= '									</tr>';
				$htmlBody .= '								</thead>';
				$htmlBody .= "								<tbody><tr>";
				$htmlBody .= "									<td>" . $phrase . "</td>";
				$htmlBody .= "									<td>" . $utils->format_sentiment($phSentiment) . "</td>";
				$htmlBody .= '								</tr></tbody>';
				$htmlBody .= '							</table>';
				$htmlBody .= '						</div>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-footer">';
				$htmlBody .= '						<button type="button" class="btn btn-default btn-block" '.
					'data-dismiss="modal">';
				$htmlBody .= '							Close';
				$htmlBody .= '						</button>';
				$htmlBody .= '					</div>';
				$htmlBody .= '				</div>';
				$htmlBody .= '			</div>';
				$htmlBody .= '		</div>';
				$htmlBody .= '	</div>';
				$htmlBody .= '	<div class="col-md-4">';
				$htmlBody .= '		<h1 class="text-center"><small>Top Comments:</small><br/>'.
					$utils->format_sentiment($tcSentiment).'</h1>';
				$htmlBody .= '		<a id="modal-222557" href="#modal-container-222557" role="button" '.
					'class="btn btn-block btn-lg btn-info" data-toggle="modal">Details</a>';
				$htmlBody .= '		<div class="modal fade" id="modal-container-222557" role="dialog" '.
					'aria-labelledby="myModalLabel" aria-hidden="true">';
				$htmlBody .= '			<div class="modal-dialog modal-lg" role="document">';
				$htmlBody .= '				<div class="modal-content">';
				$htmlBody .= '					<div class="modal-header">';
				$htmlBody .= '						<button type="button" class="close" data-dismiss="modal" '.
					'aria-hidden="true">';
				$htmlBody .= '							&#10006;';
				$htmlBody .= '						</button>';
				$htmlBody .= '						<h4 class="modal-title" id="myModalLabel">';
				$htmlBody .= '							Top 10 Comments';
				$htmlBody .= '						</h4>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-body">';
				$htmlBody .= '						<div class="table-responsive pre-scrollable">';
				$htmlBody .= '							<table class="table table-striped">';
				$htmlBody .= '								<thead>';
				$htmlBody .= '									<tr>';
				$htmlBody .= '										<th>Number</th>';
				$htmlBody .= '										<th>Sentiment</th>';
				$htmlBody .= '										<th>Comment</th>';
				$htmlBody .= '									</tr>';
				$htmlBody .= '								</thead>';
				$htmlBody .= "								<tbody>";
                if (!empty($commentHTML)) {
                    $htmlBody .= $commentHTML;
                } else {
                    $htmlBody .= '<tr class="bg-danger"><td colspan="4" class="text-center">Video has no comments.</td></tr>';
                }
				$htmlBody .= '								</tbody>';
				$htmlBody .= '							</table>';
				$htmlBody .= '						</div>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-footer">';
				$htmlBody .= '						<button type="button" class="btn btn-default btn-block" '.
					'data-dismiss="modal">';
				$htmlBody .= '							Close';
				$htmlBody .= '						</button>';
				$htmlBody .= '					</div>';
				$htmlBody .= '				</div>';
				$htmlBody .= '			</div>';
				$htmlBody .= '		</div>';
				$commentText = "";
				$htmlBody .= '	</div>';
				$htmlBody .= '  <div class="col-md-4">';
				$htmlBody .= '		<h1 class="text-center text-success"><small>Overall Caption:</small><br/>';
				$htmlBody .=            $utils->format_sentiment($caSentiment).'</h1>';
				$htmlBody .= '		<a id="modal-764936" href="#modal-container-764936" role="button" class="btn '.
					'btn-lg btn-block btn-warning" data-toggle="modal">Details</a>';
				$htmlBody .= '		<div class="modal fade" id="modal-container-764936" role="dialog" '.
					'aria-labelledby="myModalLabel" aria-hidden="true">';
				$htmlBody .= '			<div class="modal-dialog modal-lg" role="document">';
				$htmlBody .= '				<div class="modal-content">';
				$htmlBody .= '					<div class="modal-header">';
				$htmlBody .= '						<button type="button" class="close" data-dismiss="modal" '.
					'aria-hidden="true">';
				$htmlBody .= '							&#10006;';
				$htmlBody .= '						</button>';
				$htmlBody .= '						<h4 class="modal-title" id="myModalLabel">';
				$htmlBody .= '							Timeframe(s) When Phrase is Mentioned';
				$htmlBody .= '						</h4>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-body">';
				$htmlBody .= '						<div class="table-responsive pre-scrollable">';
				$htmlBody .= '							<table class="table table-striped">';
				$htmlBody .= '								<thead>';
				$htmlBody .= '									<tr>';
				$htmlBody .= '										<th>Line</th>';
				$htmlBody .= '										<th>Sentiment</th>';
				$htmlBody .= '										<th>Duration</th>';
				$htmlBody .= '										<th>Caption</th>';
				$htmlBody .= '									</tr>';
				$htmlBody .= '								</thead>';
				$htmlBody .= "								<tbody>";
				$htmlBody .= $captionsHTML;
				$htmlBody .= '								</tbody>';
				$htmlBody .= '							</table>';
				$htmlBody .= '						</div>';
				$htmlBody .= '						<a role="button" href="'.$filename.
														'"class="btn btn-block btn-primary btn-lg">Download Caption File</a>';
				$htmlBody .= '					</div>';
				$htmlBody .= '					<div class="modal-footer">';
				$htmlBody .= '						<button type="button" class="btn btn-default btn-block" '.
					'data-dismiss="modal">';
				$htmlBody .= '							Close';
				$htmlBody .= '						</button>';
				$htmlBody .= '					</div>';
				$htmlBody .= '				</div>';
				$htmlBody .= '			</div>';
				$htmlBody .= '		</div>';
				$htmlBody .= '	</div>';
				$htmlBody .= '</div>';
				$htmlBody .= '<div class="row">';
				$htmlBody .= '    <div class="col-md-12">';
				$htmlBody .= '        <div class="embed-responsive embed-responsive-16by9 padded-panel">';
				$htmlBody .= '                <iframe id="video" src="https://www.youtube.com/embed/';
				$htmlBody .= $videoId . '" frameborder="0" allowfullscreen>';
				$htmlBody .= '                </iframe>';
				$htmlBody .= '        </div>';
				$htmlBody .= '    </div>';
				$htmlBody .= '</div>';
			}
		} catch (Google_Service_Exception $e) {
			if ($e->getCode() == '401') {
				unset($_SESSION[$tokenSessionKey]);
				// If the user hasn't authorized the app, initiate the OAuth flow
                $state = mt_rand();
                if (!empty($_SERVER['QUERY_STRING'])) {
                    $_SESSION['query'] = $_SERVER['QUERY_STRING'];
                    $queryArr = explode('&', $_SESSION['query']);
                    $videoIdArr = explode('=', $queryArr[0]);
                    $phraseArr = explode('=', $queryArr[1]);
                    $jsonArr = array($videoIdArr[0] => $videoIdArr[1], $phraseArr[0] => $phraseArr[1]);
                    $jsonString = json_encode($jsonArr);
                    $state = $utils->base64UrlEncode($jsonString);
                }
                $client->setState($state);
                $_SESSION['state'] = $state;
                $_SESSION['query'] = $_SERVER['QUERY_STRING'];

				$authUrl = $client->createAuthUrl();
				$htmlBody .= '<div class="alert alert-danger"><h3>Authorization Required</h3>' .
				'<p>You will need to <a href="'.$authUrl.'">authorize access</a> before proceeding.</p></div>';
			} else {
				$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. SERVICE_ERROR_MSG .'</strong> '.
						'<code>%s</code></div>', htmlspecialchars($e->getMessage()));
			}
		} catch (Google_Exception $e) {
			$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. CLIENT_ERROR_MSG .'</strong> '.
					'<code>%s</code></div>', htmlspecialchars($e->getMessage()));
		} catch (\Exception $e) {
			$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. ERROR_MSG .'</strong> '.
			'<code>%s</code></div>', htmlspecialchars($e->getMessage()));
		}
	}
	$_SESSION[$tokenSessionKey] = $client->getAccessToken();
} elseif (YOUTUBE_OAUTH2_CLIENT_ID == 'REPLACE_ME') {
    $htmlBody = <<<END
        <h3>Client Credentials Required</h3>
        <p>
            You need to set <code>\YOUTUBE_OAUTH2_CLIENT_ID</code> and
            <code>\YOUTUBE_OAUTH2_CLIENT_ID</code> before proceeding.
        </p>
END;
} else {
    // If the user hasn't authorized the app, initiate the OAuth flow
    $jsonString = '';
    $state = mt_rand();
    if (!empty($_SERVER['QUERY_STRING'])) {
        $_SESSION['query'] = $_SERVER['QUERY_STRING'];
        $queryArr = explode('&', $_SESSION['query']);
        $videoIdArr = explode('=', $queryArr[0]);
        $phraseArr = explode('=', $queryArr[1]);
        $jsonArr = array($videoIdArr[0] => $videoIdArr[1], $phraseArr[0] => $phraseArr[1]);
        $jsonString = json_encode($jsonArr);
        $state = $utils->base64UrlEncode($jsonString);
    }
    $client->setState($state);
    $_SESSION['state'] = $state;
    $authUrl = $client->createAuthUrl();

    $htmlBody = <<<END
        <h3>Authorization Required</h3>
        <p>You need to <a href="$authUrl">authorize access</a> before proceeding.</p>
END;
}

$previous = "javascript:history.go(-1)";
if(isset($_SERVER['HTTP_REFERER'])) {
	$previous = $_SERVER['HTTP_REFERER'];
}
?>

<!doctype html>
<html lang="en">
	<head>
		<meta charset = "utf-8">
		<meta http-equiv = "X-UA-Compatible" content = "IE = edge">
		<meta name = "viewport" content = "width = device-width, initial-scale = 1">
		<title>VidYouThink Caption Search Results</title>
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
			integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
			integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<link rel="stylesheet" href="/assets/site.css" />
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

		<!--[if lt IE 9]>
		<script src = "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src = "https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header">
                        <h1><a href="./index.php">VidYouThink!</a>
                        <small>Caption Search - BETA</small></h1>
					</div>
				<div class="row">
					<div class="col-md-12 text-right">
						<a href="<?=$previous?>" class="btn btn-xs btn-link" type="button"><< Back to Search Results</a>
					</div>
				</div>
				<?=$htmlBody?>
				</div>
			</div>
		</div>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src = "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
			integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous">
		</script>
		<script>
		$(function(){
		  $('#video').css({ width: $(window).innerWidth()-40 + 'px', height: $(window).innerHeight() + 'px' });
		  $(window).resize(function(){
			$('#video').css({ width: $(window).innerWidth()-40 + 'px', height: $(window).innerHeight() + 'px' });
		  });
		});
		</script>
	</body>
</html>
