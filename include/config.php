<?PHP
  require_once __DIR__ . '/fg_membersite.php';
  require_once __DIR__ . '/db/search_query.php';

  $fgmembersite = new FGMembersite();

  //Provide your site name here
  $fgmembersite->SetWebsiteName('VidYouThink');

  //Provide the email address where you want to get notifications
  $fgmembersite->SetAdminEmail('di.gonzales@gmail.com');

  // TODO
  // local

  DB::$user = 'root';
  DB::$password = 'manage';
  DB::$dbName = 'vidyouthink';
  DB::$encoding = 'utf8mb4';


  // live
  /*
  DB::$user = 'godiane_admin';
  DB::$password = 'manage';
  DB::$dbName = 'godiane_vidyouthink';
  DB::$encoding = 'utf8mb4';
  */
  DB::$error_handler = false; // since we're catching errors, don't need error handler
  DB::$throw_exception_on_error = true;

  // For better security. Get a random string from this link: http://tinyurl.com/randstr
  // and put it here
  $fgmembersite->SetRandomKey('qSRcVS6DrTzrPvr');

?>
