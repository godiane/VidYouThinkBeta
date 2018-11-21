<?php
/**
* Logout
*
* @author DIGO
*/
  if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
    throw new \Exception('please run "composer require google/apiclient:~2.0" in "' . __DIR__ .'"');
  }

  require_once __DIR__ . '/vendor/autoload.php';
  require_once __DIR__ . '/include/config.php';

  session_start();
  $fgmembersite->LogOut();
  $fgmembersite->RedirectToURL("index.php");
?>
