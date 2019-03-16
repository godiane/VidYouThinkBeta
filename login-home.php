<?php
/**
 * Main Search Page - User Logged In
 *
 * @author DIGO
 */
if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" ' .
    'in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/constants.php';
require_once __DIR__ . '/include/utils.php';
require_once __DIR__ . '/include/caption.php';
require_once __DIR__ . '/include/category.php';
require_once __DIR__ . '/include/config.php';
require_once __DIR__ . '/include/db/video.php';
require_once __DIR__ . '/include/db/search_query.php';
require_once __DIR__ . '/include/db/search_result.php';
require_once __DIR__ . '/include/db/rating.php';
require_once __DIR__ . '/include/db/sentiment_rating.php';

session_start();

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("index.php");
    exit;
}

$sh = new SearchQueryT();
$sh_list = $sh->getTop5Queries($_SESSION['id_of_user']);

$htmlBody = <<<END
	<div class="row">
		<div class="col-lg-8">
			<form method="GET" role="form" id="search-form" data-toggle="validator">
		 		<fieldset>
					<!-- Form Name -->
					<legend>Search</legend>
                    <input type="hidden" name="submitted" id="submitted" value="1"/>
					<div class="input-group input-group-lg" data-toggle="tooltip"
                        'title="Enter phrase to search in YouTube Videos. Limited to
                        '25 search results.">
						<label class="sr-only" for="q">Search Term</label>
						<input type="text" class="form-control input-lg" id="q" name="q"
              placeholder="Enter phrase to search" required />
						<span class="input-group-btn">
							<button class="btn btn-default btn-lg" type="submit" >Go!</button>
						</span>
					</div><!-- input-group -->
				</fieldset>
			</form><!-- form -->
            <br/><br/>
            <div class="container-fluid">
                <div class="row">
                    <legend>Recent Searches
                        <button id="clear-searches" class="text-right btn btn-xs btn-link"
                            type="submit" />Clear</button>
                    </legend>
            	<div class="row">
            		<div class="col-md-12">
END;

$counter = 1;
foreach ($sh_list as $sh_entry) {
    $sr = new SearchResultT();

    $sr_list = $sr->getTopSearchResult($sh_entry['ID']);
    $overall = 'N/A';
    $phrase = 'N/A';
    $comments = 'N/A';
    $caption = 'N/A';

    if ($sr_list) {
        $senti = new SentimentRatingT();
        $overall = $senti->getSentiment($sr_list[0]['YT_ID'],
            SENTIMENT_TYPE_OVERALL);
        $phrase = $senti->getSentiment($sr_list[0]['YT_ID'],
            SENTIMENT_TYPE_PHRASE);
        $comments = $senti->getSentiment($sr_list[0]['YT_ID'],
            SENTIMENT_TYPE_OVERALL_COMMENT);
        $caption = $senti->getSentiment($sr_list[0]['YT_ID'],
            SENTIMENT_TYPE_CAPTION);
    }
    $htmlBody .= '          <div class="col-md-3"> ' .
                 '              <div class="jumbotron jumbotron-fluid"> ' .
                 '                  <h3 class="text-danger"> ' .
                                        $counter . ' ' . $sh_entry['QUERY'] .
                 '                  </h3> ' .
                 '                  <p> ' .
                 '                      <h4>Overall:</h4> '.  $overall . '<br/>' .
                 '                      <h4>Phrase:</h4> '.  $phrase . '<br/>' .
                 '                      <h4>Comments:</h4> '.  $comments . '<br/>' .
                 '                      <h4>Caption:</h4> '.  $caption . '<br/>' .
                 '                      <h4>Date:</h4> '.  $sh_entry['CREATE_TIMESTAMP'] .
                 '                      <br/>' .
                 '                  </p> ' .
                 '                  <p> ';
    if(!empty($sr_list)) {
        $htmlBody .=  '                 <a class="btn btn-primary btn-large"
                                            href="/analyze.php?videoId=' .
                                            $sr_list[0]['YT_ID'] . '&phrase=&quot;'.
                                            $sh_entry['QUERY'] .'&quot;">Details</a> ';
    } else {
        $htmlBody .=   '                <a class="btn btn-secondary btn-large disabled"
                                             role="button" aria-disabled="true"
                                              href="#">N/A</a> ';
    }
    $htmlBody .=   '                    &nbsp;<button id="clear-search" value="'.
                                        $sh_entry['QUERY'].'" class="btn btn-danger '.
                    '                   btn-large">Delete</button> ';
    $htmlBody .= '                  </p> ' .
                 '              </div> ' .
                 '          </div>';
    $counter++;
}
    $htmlBody .= '		</div> ' .
            	 '	</div> ' .
            	'</div> ' .
            '</div> ';
$htmlBody .= <<<END
		</div><!-- col -->
    <div class="col-lg-4">
				<fieldset>
        	<legend>Welcome</legend>
					<div class="form-group">
						<div class="col-lg-10">
END;
$htmlBody .= 'Hello, ' . $fgmembersite->UserFullName() . '!';
$htmlBody .= <<<END
              <ul class="nav flex-column">
                <li class="nav-item"><a class="nav-link active"
                  href="index.php">Home</a></li>
                  <li class="nav-item"><a class="nav-link"
                    href="account.php">Account</a></li>
                    <li class="nav-item"><a class="nav-link"
                        href="change-password.php">
                        Change Password</a></li>
                <li class="nav-item"><a  class="nav-link"
                  href="logout.php">Logout</a></li>
						</div>
					</div>
				</fieldset><!-- fieldset 2 -->
	  </div><!-- col -->
	</div><!-- row -->
</form>
END;

$client = new Google_Client();
$client->setDeveloperKey(YOUTUBE_DEVELOPER_KEY);

$client->setScopes(GOOGLE_YT_API_SSL);
$redirect = filter_var((isset($_SERVER['HTTPS']) ? 'https://' : 'http://') .
	$_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'], FILTER_SANITIZE_URL);
$client->setRedirectUri($redirect);

$client->setHttpClient(new \GuzzleHttp\Client(array(
    'verify' => CA_CERT_LOCATION,
)));
// Define an object that will be used to make all API requests.
$youtube = new Google_Service_YouTube($client);

if (isset($_GET['q']) && !empty($_GET['q'])) {
	$query = '"' . $_GET['q'] . '"';

	$htmlBody = '<div class="alert alert-success">';
	$htmlBody .= "<strong>Search Query:</strong> " .  $query;
	$htmlBody .= '</div>';

  $filenamePartialJson = substr(substr($query, 1), 0, -1) . '_';
  $filenameFinalJson = 'json/'.$filenamePartialJson.'search_result.json';
  // TODO file_get_contents($filenameFinalJson);

	try {
		$searchResponse = $youtube->search->listSearch('id,snippet', array(
			'q' => $query,
			'maxResults' => MAX_SEARCH_RESULTS,
            'relevanceLanguage' => 'EN',
            'regionCode' => 'PH',
            //'videoSyndicated' => 'true',
			'type' => 'video',
			'videoCaption' => 'closedCaption',
            //'videoLicense' => 'creativeCommon',
            'order' => 'viewCount'
		));
    $search_query->SaveSearch();
    $search_query_id_i = $search_query->getSearchQueryId(
        $_SESSION['id_of_user'], $query);

		// DEBUG
		// echo json_encode($searchResponse);
		$videos = '';
		$jsonArray = '{"search_results": [';

		// Add each result to the appropriate list, and then display the lists of
		// matching videos, channels, and playlists.

		$numResults = count($searchResponse->items);

		foreach ($searchResponse->items as $searchResult) {
      $video_i = new VideoT();
      $rating_i = new RatingT();
			if ('youtube#video' == $searchResult->id->kind) {
        // video_id
        $video_i->set_yt_id($searchResult->id->videoId);
        $video_i->set_url('https://www.youtube.com/embed/' . $video_i->get_yt_id());
        $video_i->set_title($searchResult->snippet->title);
        $video_i->set_channel_title($searchResult->snippet->channelTitle);
        $videosResponse = $youtube->videos->listVideos('snippet, statistics',
        array(
          'id' => $searchResult->id->videoId,
        ));
        $video_category = getVideoCategory($youtube,
          $videosResponse->items[0]->snippet->categoryId);
        $video_i->set_category($video_category);
        $video_i->set_description($searchResult->snippet->description);
        $video_i->set_insert_user_id($_SESSION['id_of_user']);
        $video_i->InsertVideoIntoDB();

        $rating_i->set_video_id($video_i->get_yt_id());
        // TODO
        $rating_i->set_rating('0');
        $view_count = '0';
        if (!empty($videosResponse->items[0]->statistics->viewCount)) {
          $view_count = number_format(
              $videosResponse->items[0]->statistics->viewCount, 0, ".", ",");
        }
        $likes_count = '0';
        if (!empty($videosResponse->items[0]->statistics->likeCount)) {
          $likes_count = number_format(
              $videosResponse->items[0]->statistics->likeCount, 0, ".", ",");
        }
        $dislikes_count = '0';
        if (!empty($videosResponse->items[0]->statistics->dislikeCount)) {
          $dislikes_count = number_format(
              $videosResponse->items[0]->statistics->dislikeCount, 0, ".", ",");
        }

        $rating_i->set_overall_view($view_count);
        $rating_i->set_likes($likes_count);
        $rating_i->set_dislikes($dislikes_count);
        $rating_i->set_insert_user_id($_SESSION['id_of_user']);
        $rating_i->InsertRatingIntoDB();

				$videos .= '<div class="row">';
				$videos .= '	<div class="col-md-12">';
				$videos .= '		<div class="media well">';
				$videos .= '			<a href="#" class="pull-left">';
				$videos .= '				<iframe width="420" height="315" ';
				$videos .= '					src="https://www.youtube.com/embed/';
				$videos .= $video_i->get_yt_id() . '" class="media-object">';
				$videos .= '                </iframe>';
				$videos .= '            </a>';
				$videos .= '            <div class="media-body">';
				$videos .= '            	<h3 class="text-left text-primary">';
				$videos .= $video_i->get_title() . '</a> by ' .
          $video_i->get_channel_title();
				$videos .= '            	</h3>';
				$videos .= '				<strong>Category:</strong> ' .
          $video_i->get_category() . '<br/>';
				$videos .= '				<strong>Overall Views:</strong> ' . number_format(
            $rating_i->get_overall_view(), 0, ".", ",") .
            '<br/>';
				$videos .= number_format($rating_i->get_likes(), 0, ".", ",") .
            ' <strong>Likes</strong>, ';
				$videos .= number_format($rating_i->get_dislikes(), 0, ".",
              ",") . ' <strong>Dislikes</strong>';
				$videos .= '				<br/><br/>';
				$videos .= '				<a href="analyze.php?videoId=' .
          $video_i->get_yt_id()
					. '&phrase=' . urlencode($query) . '"><button type="button" ' .
          'class="btn btn-success btn-lg" data-loading-text="<i ' .
          'class=\'fa fa-circle-o-notch fa-spin\'></i> Analyzing...">' .
          'Analyze</button>';
				$videos .= '				</a>';
				$videos .= '			</div>';
				$videos .= '		</div>';
				$videos .= '	</div>';
				$videos .= '</div>';

				$jsonArray .= '{';
				$jsonArray .= '"thumbnail" : ' . json_encode(
            $searchResult->snippet->thumbnails['modelData'], JSON_PRETTY_PRINT) .
            ',';
				$jsonArray .= '"id" : ' . json_encode($searchResult->id,
          JSON_PRETTY_PRINT) . ',';
				$jsonArray .= '"snippet" : ' . json_encode(
            $videosResponse->items[0]->snippet, JSON_PRETTY_PRINT) . ',';
				$jsonArray .= '"statistics" : ' . json_encode(
            $videosResponse->items[0]->statistics, JSON_PRETTY_PRINT);
				$jsonArray .= '},';

        // INSERT INTO SEARCH RESULT TABLE
        $search_result = new SearchResultT();
        $search_result->InsertSearchResultIntoDB($search_query_id_i,
          $video_i->get_yt_id(), $video_i->get_insert_user_id());

			} // END 'youtube#video'
		}
		$jsonArray = substr($jsonArray, 0, -1);
		$jsonArray .= ']}';

    file_put_contents($filenameFinalJson, $jsonArray);

		$numResultsText = '';
		if ($numResults == 25) {
			$numResultsText = 'Top ';
		}
		$numResultsText .= $numResults;

		$htmlBody .= <<<END
					<h2>$numResultsText Search Result(s)</h2>
					<div class="container-fluid">$videos</div>
END;
	} catch (Google_Service_Exception $e) {
		if ($e->getCode() == '401') {
			unset($_SESSION[$tokenSessionKey]);
			// If the user hasn't authorized the app, initiate the OAuth flow
			$state = mt_rand();
			$client->setState($state);
			$_SESSION['state'] = $state;

			$authUrl = $client->createAuthUrl();
			$htmlBody .= '<div class="alert alert-danger"><h3>Authorization '.
      'Required</h3>' .
			'<p>You need to <a href="' . $authUrl . '">authorize access</a>'.
        'before proceeding.<p></div>';
		} else {
			$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'.
        SERVICE_ERROR_MSG .'</strong> '.
				'<code>%s</code></div>', htmlspecialchars($e->getMessage()));
		}
	} catch (Google_Exception $e) {
		$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'.
      CLIENT_ERROR_MSG .'</strong> '.
			'<code>%s</code></div>',
			htmlspecialchars($e->getMessage()));
	} catch (Exception $e) {
		$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'.
      ERROR_MSG .'</strong><code>%s</code></div>',
			htmlspecialchars($e));
	}
}

?>

<!doctype html>
<html lang="en">
  <head>
	<meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE = edge">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <title>VidYouThink Caption Search</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<!-- Optional theme -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="assets/css/site.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media
      queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src = "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js">
    </script>
    <script src = "https://oss.maxcdn.com/respond/1.4.2/respond.min.js">
    </script>
    <![endif]-->
  </head>
  <body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1><a href="./index.php">VidYouThink!</a>
            <small>Caption Search</small></h1>
				</div>
        <?php if (!empty($fgmembersite->GetErrorMessage())) { ?>
          <div class="alert alert-danger" role="alert">
            <strong>Oh snap!</strong> <?=$fgmembersite->GetErrorMessage()?>
          </div>
        <?php } ?>
				<?=$htmlBody?>
			</div>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src = "assets/js/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
	<script>
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
		});
		$('#search-form').validator().on('submit', function (e) {
		  if (e.isDefaultPrevented()) {
			// handle the invalid form...
		  } else {
			// everything looks good!
		  }
		})
		$('#login-form').validator().on('submit', function (e) {
			if (e.isDefaultPrevented()) {
			// handle the invalid form...
			} else {
			// everything looks good!
			}
		})
		if ($('input:empty').length == 0) {
			$('.btn:enabled	').on('click', function() {
				var $this = $(this);
				$this.button('loading');
			});
		}
        $('#clear-searches').click(function() {
            var query = $(this).val();
            var ajaxurl = 'clear_search.php',
            data =  {
                'action': 'clearAll',
                'userId': '<?=$_SESSION['id_of_user']?>',
            };
            $.post(ajaxurl, data, function (response) {
                // Response div goes here.
                alert(response);
                location.reload(true);
            });
        });
        $('#clear-search').click(function() {
            var query = $(this).val();
            var ajaxurl = 'clear_search.php',
            data =  {
                'action': 'clear',
                'userId': '<?=$_SESSION['id_of_user']?>',
                'query': query
            };
            $.post(ajaxurl, data, function (response) {
                // Response div goes here.
                alert(response);
                location.reload(true);
            });
        });
	</script>
  </body>
</html>
