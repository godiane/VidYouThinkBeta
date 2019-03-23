<?php

if (!file_exists(__DIR__ . '/vendor/autoload.php')) {
  throw new \Exception('please run "composer require google/apiclient:~2.0" ' .
    'in "' . __DIR__ .'"');
}

require_once __DIR__ . '/vendor/autoload.php';
require_once __DIR__ . '/include/config.php';
require_once __DIR__ . '/include/db/user.php';
require_once __DIR__ . '/include/formvalidator.php';

if (isset($_POST['action'])) {
    switch ($_POST['action']) {
        case 'updateEmail':
            updateEmail();
            break;
        case 'updatePassword':
            updatePassword();
            break;
    }
}

function updateEmail() {
    $validator = new FormValidator();
    $validator->addValidation("email","email","The input for email should be a valid email value.");
    $validator->addValidation("email","req","Please fill in email.");
    $validator->addValidation("email","min=7","Please enter email with 7-100 characters.");
    $validator->addValidation("email","maxlen=100","Please enter email with 7-100 characters.");

    if(!$validator->ValidateForm())
    {
        $error='';
        $error_hash = $validator->GetErrors();
        foreach($error_hash as $inpname => $inp_err)
        {
            $error .= $inpname.':'.$inp_err."\n";
        }
        echo $error;
        exit;
    }

    $u = new UserT();
    if ($u->updateUserEmail($_POST['userId'], $_POST['email'])) {
        echo "Email has been updated.";
    } else {
        echo "Error updating email address.";
    }
    exit;
}

function updatePassword() {
    $validator = new FormValidator();
    $validator->addValidation("password","req","Please fill in password.");
    $validator->addValidation("password","minlen=6","Please enter password with 6-14 characters.");
    $validator->addValidation("password","maxlen=14","Please enter password with 6-14 characters.");

    if(!$validator->ValidateForm())
    {
        $error='';
        $error_hash = $validator->GetErrors();
        foreach($error_hash as $inpname => $inp_err)
        {
            $error .= $inpname.':'.$inp_err."\n";
        }
        echo $error;
        return false;
    }

    $u = new UserT();
    if ($u->updateUserPassword($_POST['userId'], md5($_POST['password']))) {
        echo "Password has been updated.";
    } else {
        echo "Error updating password.";
    }
    exit;
}

?>
