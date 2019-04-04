<?php
/**
 * Register Page
 *
 * @author DIGO
 */
if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/config.php';

session_start();
$is_successful = false;
if(isset($_POST['submitted']))
{
   if($fgmembersite->RegisterUser())
   {
        $is_successful = true;
   }
}

$htmlBody = <<<END
<form method="POST" action="./register.php" role="form" id="register-form" data-toggle="validator" class="form-horizontal">
	<fieldset>
		<!-- Form Name -->
		<legend>Register</legend>

        <!-- Hidden Input -->
        <input type="hidden" name="submitted" id="submitted" value="1" />

        <!-- Text input-->
		<div class="form-group" data-toggle="tooltip" title="Enter desired username - must be alphanumeric between 2-16 characters.">
  		    <label class="col-md-2 control-label" for="textinput">Username</label>
  		    <div class="col-lg-6">
      			<input id="username" name="username" type="text" maxlength="50" placeholder="user" class="form-control input-lg" required />
      			<span class="help-block">Please enter desired username.</span>
  		    </div>
		</div>

		<!-- Text input-->
		<div class="form-group" data-toggle="tooltip" title="Enter valid email address.">
  		    <label class="col-md-2 control-label" for="email">Email</label>
  		    <div class="col-lg-6">
  			    <input id="email" name="email" maxlength="100" type="text" placeholder="user@email.com"
                    class="form-control input-lg" required />
  			    <span class="help-block">Please enter your email address.</span>
  		    </div>
		</div>

		<!-- Password input-->
		<div class="form-group" data-toggle="tooltip" title="Enter desired password - must be between 6-14 characters.">
  		    <label class="col-md-2 control-label" for="password">Password</label>
  		    <div class="col-lg-6">
    		    <input id="password" name="password" maxlength="50" type="password" placeholder="********" class="form-control input-lg" required />
    		    <span class="help-block">Please enter a password.</span>
  		    </div>
		</div>

		<!-- Button -->
		<div class="form-group">
  		    <label class="col-md-2 control-label" for="register"></label>
  		    <div class="col-lg-6">
    		    <input type="submit" id="register" name="register" class="btn btn-info btn-block" />
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
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
  	<!-- Optional theme -->
  	<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css" />
    <link rel="stylesheet" href="assets/css/site.css" />

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
                <?php if (!empty($fgmembersite->GetErrorMessage())) { ?>
                <div class="alert alert-danger" role="alert">
                    <strong>Oh snap!</strong> <?=$fgmembersite->GetErrorMessage()?>
                </div>
                <?php } else { if($is_successful) { ?>
                <div class="alert alert-success" role="alert">
                    <strong>Thanks for registering!</strong>
                    <script type="text/javascript">
                    function Redirect()
                    {
                        window.location="/index.php";
                    }
                    setTimeout('Redirect()', 5000);
                    </script>
                    You will be redirected to <a href="/index.php">login page</a> in 5 seconds.
                    Else, click <a href="/index.php">here</a>.
                </div>
                <?php } } ?>
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
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js">
  </script>
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
