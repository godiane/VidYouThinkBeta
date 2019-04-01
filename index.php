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
require_once __DIR__ . '/include/config.php';

if($fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login-home.php");
    exit;
} else {
  if(isset($_POST['submitted']) && $fgmembersite->Login())
  {
       $fgmembersite->RedirectToURL("login-home.php");
       exit;
  }
}
?>

<!doctype html>
<html lang="en">
  <head>
	<meta charset = "utf-8">
    <meta http-equiv = "X-UA-Compatible" content = "IE = edge">
    <meta name = "viewport" content = "width = device-width, initial-scale = 1">
    <title>VidYouThink Caption Search</title>
	<!-- Latest compiled and minified CSS -->
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
                <div class="row">
    				<div class="page-header">
    					<h1><a href="./index.php">VidYouThink!</a>
                        <small>Caption Search</small></h1>
    				</div>
                </div><!-- row -->
                <?php if (!empty($fgmembersite->GetErrorMessage())) { ?>
                <div class="alert alert-danger" role="alert">
                    <strong>Oh snap!</strong> <?=$fgmembersite->GetErrorMessage()?>
                </div><!-- alert -->
                <?php } ?>
                <div class="row">
                    <div class="col-md-8">
    			        <legend>Welcome</legend>
    			        <div class="input-group input-group-lg" data-toggle="tooltip" title="Welcome">
    				        Please login to access functionality.
    			        </div><!-- input-group -->
    		        </div><!-- col -->
    		       <div class="col-md-4">
        			   <!-- Form Name -->
        			   <fieldset>
                            <form method="POST" action="./index.php" role="form" id="login-form" data-toggle="validator" class="form-horizontal" accept-charset="UTF-8">
                                <legend>Login</legend>

                                <input type="hidden" name="submitted" id="submitted" value="1"/>
        					    <div class="form-group">
            						<div class="col-lg-10">
            							<input id="username" name="username" type="text" placeholder="Please enter username." class="form-control" required />
            						</div>
        					    </div>
        					    <div class="form-group">
        						    <div class="col-lg-10">
        							    <input id="password" name="password" type="password" placeholder="Please enter password." class="form-control" required />
        						    </div>
        					    </div>
        					    <div class="form-group">
        						    <div class="col-lg-10">
            							<div class="checkbox">
            								<label>
            									<input type="checkbox"> Remember me
            								</label>
            							</div>
        						    </div>
        					    </div>
        					    <div class="form-group">
        						    <div class="col-lg-10">
        							    <input type="submit" id="login" name="login" class="btn btn-success btn-block" />
        						    </div>
                                    <a href="./register.php" class="btn" type="button">Not a member? Register!</a>
                                </div>
                            </form>
                        </fieldset>
    	            </div><!-- col-md-6 -->
    	        </div><!-- row -->
    	    </div><!-- col-lg-12 -->
		</div><!-- row -->
	</div><!-- container-fluid-->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src = "assets/js/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
	<script>
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
		});
		$('#login-form').validator().on('submit', function (e) {
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
