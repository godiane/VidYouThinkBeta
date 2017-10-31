<?php
	
	/**
 * Main Search Page
 *
 * @author DIGO
 */
if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/constants.php';
require_once __DIR__ . '/utils.php';
require_once __DIR__ . '/caption.php';
require_once __DIR__ . '/category.php';

session_start();

$htmlBody = <<<END
<form method="GET" role="form" id="search-form" data-toggle="validator">
	<div class="row">
		<div class="col-lg-12">
			<div class="input-group input-group-lg" data-toggle="tooltip" title="Enter phrase to search in YouTube Videos. Limited to 25 search results.">
				<label class="sr-only" for="q">Search Term</label>
				<input type="text" class="form-control input-lg" id="q" name="q" placeholder="Enter phrase to search" required />
				<span class="input-group-btn">
					<button class="btn btn-default btn-lg" type="submit" >Go!</button>
				</span>
			</div><!-- input-group -->
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
	
	try {
		$searchResponse = $youtube->search->listSearch('id,snippet', array(
			'q' => $query,
			'maxResults' => MAX_SEARCH_RESULTS,
			'type' => 'video',
			'videoCaption' => 'closedCaption'
		));
		// DEBUG
		// echo json_encode($searchResponse);
		$videos = '';
		// $jsonArray = '{"search_results": [';

		// Add each result to the appropriate list, and then display the lists of
		// matching videos, channels, and playlists.
		
		$numResults = count($searchResponse->items);
		
		foreach ($searchResponse->items as $searchResult) {
			if ('youtube#video' == $searchResult->id->kind) {
				$videos .= '<div class="row">';
				$videos .= '	<div class="col-md-12">';
				$videos .= '		<div class="media well">';
				$videos .= '			<a href="#" class="pull-left">';
				$videos .= '				<iframe width="420" height="315" ';
				$videos .= '					src="https://www.youtube.com/embed/';
				$videos .= $searchResult->id->videoId . '" class="media-object">';
				$videos .= '                </iframe>';
				$videos .= '            </a>';
				$videos .= '            <div class="media-body">';
				$videos .= '            	<h3 class="text-left text-primary">';
				$videos .= $searchResult->snippet->title . '</a> by ' . $searchResult->snippet->channelTitle;
				$videos .= '            	</h3>';
				$videosResponse = $youtube->videos->listVideos('snippet, statistics', array(
					'id' => $searchResult->id->videoId,
				));
				$videos .= '				<strong>Category:</strong> ' . getVideoCategory($youtube, $videosResponse->items[0]->snippet->categoryId) . '<br/>';
				$videos .= '				<strong>Overall Views:</strong> ' . number_format($videosResponse->items[0]->statistics->viewCount, 0, ".", ",") . '<br/>';
				if (empty($videosResponse->items[0]->statistics->likeCount)) {
					$videos .= '0 <strong>Likes</strong>, ';
				} else {
					$videos .= number_format($videosResponse->items[0]->statistics->likeCount, 0, ".", ",") . ' <strong>Likes</strong>, ';
				}
				if (empty($videosResponse->items[0]->statistics->dislikeCount)) {
					$videos .= '0 <strong>Dislikes</strong>';
				} else {
					$videos .= number_format($videosResponse->items[0]->statistics->dislikeCount, 0, ".", ",") . ' <strong>Dislikes</strong>';
				}
				$videos .= '				<br/><br/>';
				$videos .= '				<a href="analyze.php?videoId=' . $searchResult->id->videoId
					. '&phrase=' . urlencode($query) . '"><button type="button" class="btn btn-success btn-lg" data-loading-text="<i class=\'fa fa-circle-o-notch fa-spin\'></i> Analyzing...">Analyze</button>';
				$videos .= '				</a>';
				$videos .= '			</div>';
				$videos .= '		</div>';
				$videos .= '	</div>';
				$videos .= '</div>';
				
				// $jsonArray .= '{';
				// $jsonArray .= '"thumbnail" : ' . json_encode($searchResult->snippet->thumbnails['modelData'], JSON_PRETTY_PRINT) . ',';
				// $jsonArray .= '"id" : ' . json_encode($searchResult->id, JSON_PRETTY_PRINT) . ',';
				// $jsonArray .= '"snippet" : ' . json_encode($videosResponse->items[0]->snippet, JSON_PRETTY_PRINT);
				// $jsonArray .= '"statistics" : ' . json_encode($videosResponse->items[0]->statistics, JSON_PRETTY_PRINT);
				// $jsonArray .= '},';
			}
		}
		// $jsonArray = substr($jsonArray, 0, -1);
		// $jsonArray .= ']}';
		// file_put_contents(JSON_SEARCH_RESULTS_FILE, $jsonArray);
		
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
			$htmlBody .= '<div class="alert alert-danger"><h3>Authorization Required</h3>' .
			'<p>You need to <a href="' . $authUrl . '">authorize access</a> before proceeding.<p></div>';
		} else {
			$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. SERVICE_ERROR_MSG .'</strong> '.
				'<code>%s</code></div>', htmlspecialchars($e->getMessage()));
		}
	} catch (Google_Exception $e) {
		$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. CLIENT_ERROR_MSG .'</strong> '. 
			'<code>%s</code></div>',
			htmlspecialchars($e->getMessage()));
	} catch (\Exception $e) {
		$htmlBody .= sprintf('<div class="alert alert-danger"><strong>'. ERROR_MSG .'</strong> '.
			'<code>%s</code></div>',
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
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
		integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
	<link rel="stylesheet" href="assets/site.css" />

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
					<h1><a href="./index.php">VidYouThink!</a> <small>Caption Search</small></h1>
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
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
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
		if ($('input:empty').length == 0) {
			$('.btn:enabled	').on('click', function() {
				var $this = $(this);
				$this.button('loading');
			});
		}
	</script>
  </body>
</html>