<?php
/**
 * Main Search Page - User Logged In
 *
 * @author DIGO
 */
if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" ' .
    'in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/constants.php';
require_once __DIR__ . '/include/utils.php';
require_once __DIR__ . '/include/config.php';
require_once __DIR__ . '/include/db/user.php';
require_once __DIR__ . '/include/formvalidator.php';

session_start();

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("index.php");
    exit;
}

$userT = new UserT();
$user = $userT->getUser($_SESSION['id_of_user']);

$htmlBody = <<<END
	<fieldset>
	    <!-- Form Name -->
		<legend>Account</legend>
        <div class="tabbable" id="tabs-762857" data-toggle="tooltip" title="View/Edit Account Details">
            <ul class="nav nav-tabs">
END;
if (isset($_GET['edit'])) {
    $htmlBody .= <<<END
                <li class="nav-item">
                    <a class="nav-link" href="#tab1" data-toggle="tab">View</a>
                </li>
                <li class="nav-item active show">
                    <a id="edit" class="nav-link"
                        href="/account.php?edit=email#tab2" data-toggle="tab">Edit</a>
                </li>
END;
} else {
    $htmlBody .= <<<END
                <li class="nav-item active show">
                    <a class="nav-link" href="#tab1" data-toggle="tab">View</a>
                </li>
                <li class="nav-item">
                    <a id="edit" class="nav-link"
                        href="/account.php?edit=email#tab2" data-toggle="tab">Edit</a>
                </li>
END;
}
$htmlBody .= <<<END
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="tab1">
                    <div class="container col-md-12" style="padding: 20px;">
                        <div class="form-group row">
                            <label for="username" class="col-sm-2 col-form-label">Username</label>
                            <div class="col-sm-10">
END;
$htmlBody .=                '    <input type="text" readonly class="form-control form-control-lg"
                                        id="usernameView" value="'. $user->get_username().'">';
$htmlBody .= <<<END
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="email" class="col-sm-2 col-form-label">Email</label>
                            <div class="col-sm-10">
END;
$htmlBody .=                '   <input type="text" readonly
                                    class="form-control form-control-lg" id="emailView"
                                    value="'. $user->get_email().'">';
$htmlBody .= <<<END
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="password" class="col-sm-2 col-form-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" readonly
                                    class="form-control form-control-lg"
                                    id="passwordView" value="********">
                            </div>
                        </div>
                    </div><!-- container -->
                </div><!-- tab-pane -->
                <div class="tab-pane" id="tab2">
                    <form method="GET" role="form" id="account-form" data-toggle="validator">
                        <div class="container col-md-12" style="padding: 20px;">
                            <div class="form-group row">
                                <label for="username" class="col-sm-2 col-form-label">Username</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control form-control-lg"
END;
$htmlBody .=                           ' id="username" value="'. $user->get_username().'">';
$htmlBody .= <<<END
                                </div>
                            </div>
                            <div class="form-group row" data-toggle="tooltip" title="Edit new email address">
                                <label for="email" class="col-sm-2 col-form-label">Email</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control form-control-lg" id="email"
END;
$htmlBody .=                            ' value="'. $user->get_email().'" />';
$htmlBody .= <<<END
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="password" class="col-sm-2 col-form-label">Password</label>
                                <div class="col-sm-10">
                                    <input type="password" class="form-control form-control-lg"
                                        id="password" disabled value="********">
                                </div>
                            </div>
                            <button id="email-update" type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div><!-- tab-pane -->
            </div><!-- tab-content -->
        </div><!-- tab -->
	</fieldset>
<br/><br/>
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
	<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
	<!-- Optional theme -->
	<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="assets/css/site.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media
      queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
    <script src = "https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js">
    </script>
    <script src = "https://oss.maxcdn.com/respond/1.4.2/respond.min.js">
    </script>
    <![endif]-->
  </head>
  <body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h1><a href="./index.php">VidYouThink!</a>
                        <small>Caption Search</small></h1>
				</div>
                <?php if (!empty($fgmembersite->GetErrorMessage())) { ?>
                <div class="alert alert-danger" role="alert">
                    <strong>Oh snap!</strong> <?=$fgmembersite->GetErrorMessage()?>
                </div>
                <?php } ?>
                <div class="row">
                    <div class="col-md-8">
                        <div class="content">
                            <?=$htmlBody?>
                        </div>
                    </div><!-- col-md-8 -->
                    <div class="col-md-4">
                        <fieldset>
                            <legend>Welcome</legend>
                            <div class="form-group">
                                <div class="col-lg-10">Hello, <?=$fgmembersite->UserFullName()?>!<ul class="nav flex-column">
                                    <ul>
                                        <li class="nav-item"><a class="nav-link active"
                                          href="index.php">Home</a></li>
                                        <li class="nav-item"><a class="nav-link"
                                            href="account.php">Account</a></li>
                                        <li class="nav-item"><a class="nav-link"
                                            href="change-password.php">
                                            Change Password</a></li>
                                        <li class="nav-item"><a  class="nav-link"
                                            href="logout.php">Logout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </fieldset><!-- fieldset welcome -->
                    </div><!-- col-lg-4 -->
                </div><!-- row -->
            </div><!-- col-md-12 -->
		</div><!-- row -->
	</div><!-- container fluid -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src = "assets/js/jquery.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.js"></script>
	<script>
		$(document).ready(function(){
			$('[data-toggle="tooltip"]').tooltip();
		});
		$('#account-form').validator().on('submit', function (e) {
		  if (e.isDefaultPrevented()) {
			// handle the invalid form...
		  } else {
			// everything looks good!
		  }
        });
		if ($('input:empty').length == 0) {
			$('.btn:enabled	').on('click', function() {
				var $this = $(this);
				$this.button('loading');
			});
		}
        $('#edit').click(function() {
            // Response div goes here.
            //location.reload(true);
            // window.location.href = "account.php?edit=email#tab2";
        });
        /*
        $("#email").on("click", function() {
            if ($(this).val() != "") {
                $(this).val("");
            }
        });
        */
        $('#email-update').click(function() {
            var email = $('#email').val();
            var ajaxurl = 'update_account.php',
            data =  {
                'action': 'updateEmail',
                'userId': '<?=$_SESSION['id_of_user']?>',
                'email': email
            };
            $.post(ajaxurl, data, function (response) {
                // Response div goes here.
                alert(response);
                location.reload(true);
            });
        });
	</script>
  </body>
</html>
