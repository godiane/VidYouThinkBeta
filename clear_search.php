<?php

if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" ' .
    'in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/config.php';
require_once __DIR__ . '/include/db/search_query.php';

if (isset($_POST['action'])) {
    switch ($_POST['action']) {
        case 'clearAll':
            clearAll();
            break;
        case 'clear':
            clear();
            break;
    }
}

function clearAll() {
    $sq = new SearchQueryT();
    $sq->makeQueriesInvisible($_POST['userId']);
    echo "All search histories have been cleared.";
    exit;
}

function clear() {
    $sq = new SearchQueryT();
    $sq->makeQueryInvisible($_POST['userId'], $_POST['query']);
    echo "Search History has been cleared.";
    exit;
}
?>
