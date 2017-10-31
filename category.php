<?php
	
	require_once __DIR__ . '/constants.php';
	
	function getVideoCategory(Google_Service_YouTube $youtube, $categoryId) {
		$videoCategory = $youtube->videoCategories->listVideoCategories('snippet', array(
			'id' => $categoryId,
			'part' => 'snippet',
		));
		return $videoCategory->items[0]->snippet->title;
	}
	
?>