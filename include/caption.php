<?php
/**
 * Caption API
 *
 * @author DIGO
 */
	require_once __DIR__ . '/constants.php';
	require_once __DIR__ . '/sentiment.php';

	function getCaptionID(Google_Service_YouTube $youtube, $videoId, $captionLanguage = CAPTION_LANGUAGE) {
		// Call the YouTube Data API's captions.list method to retrieve video caption tracks.
		$captions = $youtube->captions->listCaptions("snippet", $videoId);

		foreach ($captions as $caption) {
			if ($captionLanguage == $caption['snippet']['language']) {
				return $caption['id'];
				break;
			}
		}
	}

	/**
	 * Downloads a caption track for a YouTube video. (captions.download)
	 *
	 * @param Google_Service_YouTube $youtube YouTube service object.
	 * @param string $captionId The id parameter specifies the caption ID for the resource
	 * that is being downloaded. In a caption resource, the id property specifies the
	 * caption track's ID.
	 * @param $htmlBody - html body.
	 */
	function getVideoCaption(Google_Service_YouTube $youtube, $captionId) {
		// Call the YouTube Data API's captions.download method to download an existing caption.
		// FIXME Changed from captionResouce to captionResource
		$captionResource = $youtube->captions->download($captionId, array(
			'tfmt' => "srt",
			'alt' => "media"
		));
		// FIXME Based on https://github.com/guzzle/guzzle/commit/b0cb490f15567f724ce26380e4bb57b91831947b
		return $captionResource->getBody();
	}

	function parseCaption($videoId, $filename, $phrase = NULL) {

		$lines = file($filename);
		$captionsHTML = '';

		$subs    = array();
		$state   = SRT_STATE_SUBNUMBER;
		$subNum  = 0;
		$subText = '';
		$subTime = '';

		foreach($lines as $line) {
			switch($state) {
				case SRT_STATE_SUBNUMBER:
					$subNum = trim($line);
					$state  = SRT_STATE_TIME;
					break;

				case SRT_STATE_TIME:
					$subTime = trim($line);
					$state   = SRT_STATE_TEXT;
					break;

				case SRT_STATE_TEXT:
					if (trim($line) == '') {
						$sub = new stdClass;
						$sub->number = $subNum;
						list($sub->startTime, $sub->stopTime) = explode(' --> ', $subTime);
						$sub->text   = $subText;
						$subText     = '';
						$state       = SRT_STATE_SUBNUMBER;

						$subs[]      = $sub;
						$isThere = "true";
						if (strpos(strtolower($sub->text), strtolower(substr($phrase, 1, -1))) === false){
							$isThere = "false";
						}
						/* TODO Uncomment for debugging
						echo "shacked! phrase: ".substr($phrase, 1, -1) . ' text:' . $sub->text . ' result:' .
							$isThere . '<br/>';
						*/
						if ($isThere === "true") {
							$captionsHTML .= '<tr class="bg-warning">';
							$captionsHTML .= '    <td>' . $sub->number . '</td>';
							$captionsHTML .= '    <td>' . format_sentiment(getSentimentAnalysisJSON(
								strtolower($sub->text))) . '</td>';
							$captionsHTML .= '    <td>' . $sub->startTime . ' --> ' . $sub->stopTime . '</td>';
							$captionsHTML .= '    <td>' . $sub->text . '</td>';
							$captionsHTML .= '</tr>';
						}

					} else {
						$subText .= $line;
					}
					break;
			}
		}
		$file = 'json/' . $videoId . '.captions.json';
		file_put_contents($file, json_encode($subs, JSON_PRETTY_PRINT));
		if (empty($captionsHTML)) {
			$captionsHTML .= '<tr class="bg-danger"><td colspan="4" class="text-center">Searched phrase was not mentioned in the video.</td></tr>';
		}
		return $captionsHTML;
	}

	function getPhraseTimeframe($captions, $phrase) {

		$lines = $captions;
		$position = '';

		$subs    = array();
		$state   = SRT_STATE_SUBNUMBER;
		$subNum  = 0;
		$subText = '';
		$subTime = '';

		foreach($lines as $line) {
			switch($state) {
				case SRT_STATE_SUBNUMBER:
					$subNum = trim($line);
					$state  = SRT_STATE_TIME;
					break;

				case SRT_STATE_TIME:
					$subTime = trim($line);
					$state   = SRT_STATE_TEXT;
					break;

				case SRT_STATE_TEXT:
					if (trim($line) == '') {
						$sub = new stdClass;
						$sub->number = $subNum;
						list($sub->startTime, $sub->stopTime) = explode(' --> ', $subTime);
						$sub->text   = $subText;
						$subText     = '';
						$state       = SRT_STATE_SUBNUMBER;

						$subs[]      = $sub;
						if (strpos($sub->text, $phrase) !== false) {
							$position .= '<strong>Phrase at ' . $sub->startTime . '</strong><br/>';
						}
					} else {
						$subText .= $line;
					}
					break;
			}
		}
		return $position;
	}

	function getCaptionsText($filename) {

		$lines = file($filename);
		$captions = '';

		$subs    = array();
		$state   = SRT_STATE_SUBNUMBER;
		$subNum  = 0;
		$subText = '';
		$subTime = '';

		foreach($lines as $line) {
			switch($state) {
				case SRT_STATE_SUBNUMBER:
					$subNum = trim($line);
					$state  = SRT_STATE_TIME;
					break;

				case SRT_STATE_TIME:
					$subTime = trim($line);
					$state   = SRT_STATE_TEXT;
					break;

				case SRT_STATE_TEXT:
					if (trim($line) == '') {
						$sub = new stdClass;
						$sub->number = $subNum;
						list($sub->startTime, $sub->stopTime) = explode(' --> ', $subTime);
						$sub->text   = $subText;
						$subText     = '';
						$state       = SRT_STATE_SUBNUMBER;

						$subs[]      = $sub;
						$captions .= $sub->text . ' ';
					} else {
						$subText .= $line;
					}
					break;
			}
		}
		return $captions;
	}


?>
