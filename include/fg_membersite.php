<?PHP
/*
    Registration/Login script from HTML Form Guide
    V1.0

    This program is free software published under the
    terms of the GNU Lesser General Public License.
    http://www.gnu.org/copyleft/lesser.html


This program is distributed in the hope that it will
be useful - WITHOUT ANY WARRANTY; without even the
implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

For updates, please visit:
http://www.html-form-guide.com/php-form/php-registration-form.html
http://www.html-form-guide.com/php-form/php-login-form.html

*/
/**
* Sentiment Functions
*
* @author DIGO
*/
require_once __DIR__ . '/formvalidator.php';

class FGMembersite
{
    //----- Variables -------
	var $sitename;
	var $admin_email;
    var $from_address;

    var $username;
    var $pwd;
    var $database;
    var $connection;
    var $rand_key;

    var $error_message;

    //-----Initialization -------
    function __construct() {
    	$this->sitename = 'YourWebsiteName.com';
        $this->rand_key = '0iQx5oBk66oVZep';
    }

      function FGMembersite() {
        self::__construct();
      }
      function SetAdminEmail($email)
      {
          $this->admin_email = $email;
      }

      function SetWebsiteName($sitename)
      {
          $this->sitename = $sitename;
      }

      function SetRandomKey($key)
      {
          $this->rand_key = $key;
      }

      //-------Main Operations ----------------------
      function RegisterUser()
      {
          if(!isset($_POST['submitted']))
          {
             return false;
          }

          $formvars = array();

          if(!$this->ValidateRegistrationSubmission())
          {
            $this->HandleError("Submission is invalid.");
            return false;
          }

          $this->CollectRegistrationSubmission($formvars);

          if(!$this->SaveRegistrationToDatabase($formvars))
          {
              return false;
          }
          return true;
      }

      function Login()
      {
          if(empty($_POST['username']))
          {
              $this->HandleError("Username is empty.");
              return false;
          }

          if(empty($_POST['password']))
          {
              $this->HandleError("Password is empty.");
              return false;
          }

          $username = trim($_POST['username']);
          $password = trim($_POST['password']);

          if(!isset($_SESSION)){ session_start(); }
          if(!$this->CheckLoginInDB($username,$password))
          {
              return false;
          }

          $_SESSION[$this->GetLoginSessionVar()] = $username;
          return true;
      }

      function CheckLogin()
      {
           if(!isset($_SESSION)){ session_start(); }

           $sessionvar = $this->GetLoginSessionVar();

           if(empty($_SESSION[$sessionvar]))
           {
              return false;
           }
           return true;
      }

      function UserFullName()
      {
          return isset($_SESSION['name_of_user'])?$_SESSION['name_of_user']:'';
      }

      function UserEmail()
      {
          return isset($_SESSION['email_of_user'])?$_SESSION['email_of_user']:'';
      }

      function LogOut()
      {
          if(!isset($_SESSION)){ session_start(); }

          $sessionvar = $this->GetLoginSessionVar();

          $_SESSION[$sessionvar]=NULL;

          unset($_SESSION[$sessionvar]);
      }

      //-------Public Helper functions -------------
      function RedirectToURL($url)
      {
          header("Location: $url");
          exit;
      }

      function GetSpamTrapInputName()
      {
          return 'sp'.md5('KHGdnbvsgst'.$this->rand_key);
      }

      function GetErrorMessage()
      {
          if(empty($this->error_message))
          {
              return '';
          }
          $errormsg = nl2br(htmlentities($this->error_message));
          return $errormsg;
      }
      //-------Private Helper functions-----------

      function HandleError($err)
      {
          $this->error_message .= $err."\r\n";
      }

      function HandleDBError($err)
      {
          $this->HandleError($err);
      }

      function GetLoginSessionVar()
      {
          $retvar = md5($this->rand_key);
          $retvar = 'usr_'.substr($retvar,0,10);
          return $retvar;
      }

      function CheckLoginInDB($username,$password)
      {
          if(!$this->DBLogin())
          {
              $this->HandleError("Database login failed!");
              return false;
          }
          $username = $this->SanitizeForSQL($username);
          $pwdmd5 = md5($password);

          $qry = "SELECT ID, USERNAME, EMAIL FROM USER " .
                  "WHERE USERNAME=%s " .
                  "AND PASSWORD=%s ";
                  //"AND confirmcode='y'";

          $results = $this->connection->query($qry, $username, $pwdmd5);
          if ($this->connection->count() > 0) {
            foreach ($results as $row) {
				$_SESSION['id_of_user'] = $row['ID'];
                $_SESSION['name_of_user']  = $row['USERNAME'];
                $_SESSION['email_of_user'] = $row['EMAIL'];
            }
            return true;
          } else {
            $this->HandleError("Error logging in. The username or password does not match.");
            return false;
          }
        }

        function ValidateRegistrationSubmission()
        {
            //This is a hidden input field. Humans won't fill this field.
            if(!empty($_POST[$this->GetSpamTrapInputName()]) )
            {
                //The proper error is not given intentionally
                $this->HandleError("Automated submission prevention: case 2 failed");
                return false;
            }

            $validator = new FormValidator();
            // $validator->addValidation("name","req","Please fill in Name");
            $validator->addValidation("email","email","The input for email should be a valid email value.");
            $validator->addValidation("email","req","Please fill in email.");
			$validator->addValidation("email","min=7","Please enter username with 7-100 characters.");
			$validator->addValidation("email","maxlen=100","Please enter username with 2-16 characters.");
            $validator->addValidation("username","req","Please fill in username.");
			$validator->addValidation("username","alnum","Please enter username with alphanumeric characters.");
			$validator->addValidation("username","minlen=2","Please enter username with 2-16 characters.");
			$validator->addValidation("username","maxlen=16","Please enter username with 2-16 characters.");
            $validator->addValidation("password","req","Please fill in password.");
			$validator->addValidation("password","minlen=6","Please enter username with 6-14 characters.");
			$validator->addValidation("password","maxlen=14","Please enter username with 6-14 characters.");

            if(!$validator->ValidateForm())
            {
                $error='';
                $error_hash = $validator->GetErrors();
                foreach($error_hash as $inpname => $inp_err)
                {
                    $error .= $inpname.':'.$inp_err."\n";
                }
                $this->HandleError($error);
                return false;
            }
            return true;
        }

        function CollectRegistrationSubmission(&$formvars)
        {
            // TODO $formvars['name'] = $this->Sanitize($_POST['name']);
            $formvars['email'] = $this->Sanitize($_POST['email']);
            $formvars['username'] = $this->Sanitize($_POST['username']);
            $formvars['password'] = $this->Sanitize($_POST['password']);
        }

        function GetAbsoluteURLFolder()
        {
            $scriptFolder = (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on')) ? 'https://' : 'http://';
            $scriptFolder .= $_SERVER['HTTP_HOST'] . dirname($_SERVER['REQUEST_URI']);
            return $scriptFolder;
        }

        function SaveRegistrationToDatabase(&$formvars)
        {
            if(!$this->DBLogin())
            {
                $this->HandleError("Database login failed.");
                return false;
            }
            if(!$this->IsFieldUnique($formvars,'email','USER'))
            {
                $this->HandleError("This email is already registered.");
                return false;
            }
            if(!$this->IsFieldUnique($formvars,'username','USER'))
            {
                $this->HandleError('This username is already used. ' .
				'Please try another username.');
                return false;
            }
            if(!$this->SaveUserToDatabase($formvars))
            {
                $this->HandleError("Inserting to Database failed.");
                return false;
            }
            return true;
        }

        function IsFieldUnique($formvars,$fieldname,$tablename)
        {
            $field_val = $this->SanitizeForSQL($formvars[$fieldname]);
            $qry = "SELECT $fieldname FROM $tablename WHERE $fieldname=%s";
            $result = DB::query($qry, $field_val);
            if(DB::count() > 0)
            {
                return false;
            }
            return true;
        }

        function DBLogin()
        {
          try {
            $this->connection = new MeekroDB();
          } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
          }
          return true;
        }

        /** Insert into USER table **/
        function SaveUserToDatabase(&$formvars)
        {
            $confirmcode = $this->MakeConfirmationMd5($formvars['email']);
            $formvars['confirmcode'] = $confirmcode;
						$uniqueId = uniqid('vyt',true);
            try {
            	DB::insert('USER', array(
					'ID' => $uniqueId,
                	'USERNAME' => $this->SanitizeForSQL($formvars['username']),
                	'EMAIL' => $this->SanitizeForSQL($formvars['email']),
                	'PASSWORD' => md5($formvars['password']),
                	'CONFIRM_CODE' => $confirmcode)
            	);
            } catch (MeekroDBException $e) {
              $this->HandleDBError($e->getMessage());
              return false;
            }
            return true;
        }

        function MakeConfirmationMd5($email)
        {
            $randno1 = rand();
            $randno2 = rand();
            return md5($email.$this->rand_key.$randno1.''.$randno2);
        }

        function SanitizeForSQL($str)
        {
            $ret_str = addslashes( $str );
            return $ret_str;
        }

     /*
        Sanitize() function removes any potential threat from the
        data submitted. Prevents email injections or any other hacker attempts.
        if $remove_nl is true, newline chracters are removed from the input.
        */
        function Sanitize($str,$remove_nl=true)
        {
            $str = $this->StripSlashes($str);

            if($remove_nl)
            {
                $injections = array('/(\n+)/i',
                    '/(\r+)/i',
                    '/(\t+)/i',
                    '/(%0A+)/i',
                    '/(%0D+)/i',
                    '/(%08+)/i',
                    '/(%09+)/i'
                    );
                $str = preg_replace($injections,'',$str);
            }
            return $str;
        }
        function StripSlashes($str)
        {
            if(get_magic_quotes_gpc())
            {
                $str = stripslashes($str);
            }
            return $str;
        }
    } // END CLASS
?>
