<?php
	
	if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
	  throw new \Exception('please run "composer require google/apiclient:~2.0" in "' . __DIR__ .'"');
	}

	require_once __DIR__ . '/vendor/autoload.php';
	require_once __DIR__ . '/constants.php';
	require_once __DIR__ . '/caption.php';
	require_once __DIR__ . '/sentiment.php';
	require_once __DIR__ . '/comment.php';
	require_once __DIR__ . '/utils.php';

	session_start();
	
	$client = new Google_Client();
	$client->setClientId(YOUTUBE_OAUTH2_CLIENT_ID);
	$client->setClientSecret(YOUTUBE_OAUTH2_CLIENT_SECRET);
	
	$client->setScopes('https://www.googleapis.com/auth/youtube.force-ssl');
	$redirect = filter_var((isset($_SERVER['HTTPS']) ? 'https://' : 'http://') . 
		$_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'], FILTER_SANITIZE_URL);
	$client->setRedirectUri($redirect);

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
		header('Location: ' . $redirect);
	}

	if (isset($_SESSION[$tokenSessionKey])) {
		/*
		$client->refreshToken(YOUTUBE_REFRESH_TOKEN);
		*/
		$client->setAccessToken($_SESSION[$tokenSessionKey]);
		$client->setAccessType('offline');
		
	}

	$captionID = getCaptionID($youtube, $searchResult->id->videoId);
	$videoCaption = getVideoCaption($youtube, $captionID);
	echo $videoCaption;

?>