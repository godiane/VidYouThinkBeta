<?php
 /**
	* YouTube API - Constants
	*
	* @author DIGO
	*/
	/*
	 * You can acquire an OAuth 2.0 client ID and client secret from the
	 * {{ Google Cloud Console }} <{{ https://cloud.google.com/console }}>
	 * For more information about using OAuth 2.0 to access Google APIs, please see:
	 * <https://developers.google.com/youtube/v3/guides/authentication>
	 * Please ensure that you have enabled the YouTube Data API for your project.
	 *
	 *
	 * Set $DEVELOPER_KEY to the "API key" value from the "Access" tab of the
	 * {{ Google Cloud Console }} <{{ https://cloud.google.com/console }}>
	 * Please ensure that you have enabled the YouTube Data API for your project.
	 */
	define('YOUTUBE_DEVELOPER_KEY', 'AIzaSyDGXhLiUZwnrZ6NSi1F24W58H6ffgNZrbw');
	define('YOUTUBE_OAUTH2_CLIENT_ID', '384465582070-9lmu79q3g1bb8elcivjjhu9fne8eldls.apps.googleusercontent.com');
	define('YOUTUBE_OAUTH2_CLIENT_SECRET', 'W_aGyotLfOAcK4AzaDRMux3X');
	define('YOUTUBE_REFRESH_TOKEN', '1/Sx4q1Gpu6lx4NHBWxYR4q9EZ1-1zK7k9uHgIzJuKQIY');

	// define('HP_HAVEN_API_KEY', 'dc7cac49-823e-4287-8c0c-28298f335ec0');

	// define('HP_HAVEN_URI_1', 'https://api.havenondemand.com/1/api/sync/analyzesentiment/v2?text=');
	// define('HP_HAVEN_URI_2', '&apikey=' . HP_HAVEN_API_KEY);

	define('ANALYSIS_URI', 'https://twinword-sentiment-analysis.p.mashape.com/analyze/?text=');
	define('TESTING_KEY', '7e7aqXRFb7mshSPDw5q4CeVwDTcVp1TBwYGjsn3JF2f2Q3UKxe');
	define('PROD_KEY', 'ZaZNBHG6f7n2OHY5tkjeE8wyiswzuQIY');

	define('GOOGLE_YT_API_SSL' , 'https://www.googleapis.com/auth/youtube.force-ssl');
	define('JSON_SEARCH_RESULTS_FILE', 'json/search_results.json');
	define('MAX_SEARCH_RESULTS', 25);

	// LIVE define('CA_CERT_LOCATION', '/home/godiane/ssl/certs/cacert.pem');
	// LOCAL
	define('CA_CERT_LOCATION', '/Users/godiane/Projects/beta/VidYouThinkPHP/ssl/certs/cacert.pem');


	define('CAPTION_LANGUAGE', 'en');

	define('SRT_STATE_SUBNUMBER', 0);
	define('SRT_STATE_TIME',      1);
	define('SRT_STATE_TEXT',      2);
	define('SRT_STATE_BLANK',     3);

	define('COMMENT', 'comment');
	define('CAPTION', 'caption');
	define('PHRASE', 'phrase');

	define('SERVICE_ERROR_MSG', 'Service Error: ');
	define('CLIENT_ERROR_MSG', 'Client Error: ');
	define('ERROR_MSG', 'Error: ');


?>
