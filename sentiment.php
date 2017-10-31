<?php
	require_once __DIR__ . '/constants.php';
	require_once __DIR__ . '/utils.php';
	
	function debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
		$phraseAndCaptionsSentiment) {
		echo "Top Comment Sentiment: " . $topCommentSentiment . "<br/>";
		echo "Phrase Sentiment: " . $phraseSentiment . "<br/>";
		echo "Captions Sentiment: " . $captionsSentiment . "<br/>";
		echo "Phrase and Captions Sentiment: " . $phraseAndCaptionsSentiment . "<br/>";
	}
	
	function getOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment) {
		$phraseAndCaptionsSentiment = "neutral";
		// echo "TEST! " . $phraseSentiment . " :: " . (preg_match("positive", $phraseSentiment));
		if ("positive" == $phraseSentiment) {
			if ("positive" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "positive";
			} else if ("negative" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "negative";
			} else if ("neutral" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "neutral";		
			} else {
				// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
				// $phraseAndCaptionsSentiment);
				return "Invalid";
			}
		} else if ("neutral" == $phraseSentiment) {
			if ("positive" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "neutral";
			} else if ("neutral" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "neutral";	
			} else if ("negative" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "negative";
			} else {
				// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
				// $phraseAndCaptionsSentiment);
				return "Invalid";
			}
		} else if ("negative" == $phraseSentiment) {
			if ("positive" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "negative";
			} else if ("neutral" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "negative";	
			} else if ("negative" == $captionsSentiment) {
				$phraseAndCaptionsSentiment = "negative";
			} else {
				// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
				// $phraseAndCaptionsSentiment);
				return "Invalid";
			}
		} else {
			// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
			// $phraseAndCaptionsSentiment);
			return "Invalid";
		}
		
		if ("positive" == $phraseAndCaptionsSentiment) {
			if ("positive" == $topCommentSentiment) {
				return "positive";
			} else if ("negative" == $topCommentSentiment) {
				return "negative";
			} else if ("neutral" == $topCommentSentiment) {
				return "neutral";
			} else {
				// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
				// $phraseAndCaptionsSentiment);
				return "Invalid";
			}
		}  else if ("negative" == $phraseAndCaptionsSentiment) {
			return "negative";
		}  else if ("neutral" == $phraseAndCaptionsSentiment) {
			if ("negative" == $topCommentSentiment) {
				return "negative";
			} else {
				return "neutral";
			}
		} else {
			// FIXME debugOverallSentiment($topCommentSentiment, $phraseSentiment, $captionsSentiment, 
			// $phraseAndCaptionsSentiment);
			return "Invalid";
		}
	}
	
	function getSentimentAnalysisJSON($text, $videoId = NULL, $type = NULL, $saveToFile = false) {
		$file = '';
		if (!empty($videoId)) {
			$file = 'json/' . $videoId . '.' . $type . '.sentiment.json';
		}
		if (CAPTION == $type) {
			$text = truncate($text, 1500, "");
		}
		if (empty($file) || !file_exists($file)) {
			$uri = ANALYSIS_URI . urlencode($text);
			$response = \Httpful\Request::get($uri)->addHeaders(
				array(
					'X-Mashape-Key' => '7e7aqXRFb7mshSPDw5q4CeVwDTcVp1TBwYGjsn3JF2f2Q3UKxe',
					'Accept' => 'application/json',
				))
			->send();
			if ($saveToFile) {
				file_put_contents($file, json_encode($response->body, JSON_PRETTY_PRINT));			
			}
			return $response->body->type;
		} else {
			$arr = json_decode(file_get_contents($file), true);
			return $arr['body']['type'];
		}
	}

?>