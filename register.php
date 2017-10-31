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
<form method="POST" role="form" id="register-form" data-toggle="validator" class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<legend>Register</legend>

		<!-- Text input-->
		<div class="form-group">
  		<label class="col-md-2 control-label" for="textinput">Username</label>
  		<div class="col-lg-6">
  			<input id="textinput" name="textinput" type="text" placeholder="user" class="form-control input-lg" required="">
  			<span class="help-block">Please enter desired username.</span>
  		</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
  		<label class="col-md-2 control-label" for="gmail">Gmail</label>
  		<div class="col-lg-6">
  			<input id="gmail" name="gmail" type="text" placeholder="user@gmail.com" class="form-control input-lg" required="">
  			<span class="help-block">Please enter your Gmail address.</span>
  		</div>
		</div>

		<!-- Password input-->
		<div class="form-group">
  		<label class="col-md-2 control-label" for="password">Password</label>
  		<div class="col-lg-6">
    		<input id="password" name="password" type="password" placeholder="********" class="form-control input-lg" required="">
    		<span class="help-block">Please enter a password.</span>
  		</div>
		</div>

		<!-- Button -->
		<div class="form-group">
  		<label class="col-md-2 control-label" for="register"></label>
  		<div class="col-lg-6">
    		<button id="register" name="register" class="btn btn-info btn-block">Register</button>
  		</div>
		</div>
	</fieldset>
</form>
END;

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
		$('#register-form').validator().on('submit', function (e) {
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
