<?php

function truncate($string, $length=100) {
  $string = trim($string);
  $pos = strpos($string, ' ', $length);
  return substr($string, 0, $pos);
}

function format_sentiment($text) {
	$format = 'text-primary';
	if (strcasecmp("negative", $text) == 0) {
		$format = 'text-danger';
	} else if (strcasecmp("positive", $text) == 0) {
		$format = 'text-success';
	} else if (strcasecmp("neutral", $text) == 0) {
		$format = 'text-muted';
	}
	return '<span class="'.$format.'">'.$text.'</span>';
}

?>