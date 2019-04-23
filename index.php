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
                        <small>Caption Search - BETA</small></h1>
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
						

					VidYouThink is a time-saving, web-based mechanism for YouTube researchers to get insights on 
					a particular phrase mentioned in YouTube videos.<br/><br/>
					This is done via phrase search and sentiment analysis focused on Closed-Captioned YouTube 
					videos using Closed Captions, Viewer Feedback, and Comments - to get a general sentiment based on a given search query.<br/><br/>
					Users need a Google Account to use the sentiment analysis functionality.<br/><br/>
					<ul>
						<li>Users (YouTube researchers) can register and login on the site.</li>
						<li>Registered users can login, manage their account – change email and password, and search videos through YouTube.</li>
						<li>Search through available Closed Captions in YouTube (transcript provided by channel owner) using YouTube Search API.</li>
						<li>Get a general sentiment of a phrase, and check whether the phrase context is clear in YouTube videos, and the 
							reactions that go with it via Sentiment Analysis API - Google Account authentication is required to do so.</li>
						<li>Present the results in tabular form.</li>
						<li>Users can review their search history, clear a few or all their search histories.</li>
					</ul>

					Ready to test? <a href="./register.php">Sign up</a> - or <a href="#login-form">login</a>, if you already have an account!
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
