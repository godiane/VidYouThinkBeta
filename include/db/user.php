<?PHP
/**
 * User
 *
 * @author DIGO
 */
require_once __DIR__ . '/../formvalidator.php';
require_once __DIR__ . '/../utils.php';

class UserT
{
    //----- Variables -------
    var $id;
    var $username;
    var $email;
    var $password;
    var $confirm_code;
    var $create_timestamp;
    var $update_timestamp;

    // Error Message Handler
    var $error_message;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function UserT()
    {
        self::__construct();
    } // END FUNCTION

    function set_id($id_i)
    {
        $this->id = $id_i;
    } // END FUNCTION

    function get_id()
    {
        return $this->id;
    } // END FUNCTION

    function set_username($username_i)
    {
        $this->username = $username_i;
    } // END FUNCTION

    function get_username()
    {
        return $this->username;
    } // END FUNCTION

    function set_email($email_i)
    {
        $this->email = $email_i;
    } // END FUNCTION

    function get_email()
    {
        return $this->email;
    } // END FUNCTION

    function set_password($password_i)
    {
        $this->password = $password_i;
    } // END FUNCTION

    function get_password()
    {
        return $this->password;
    } // END FUNCTION

    function set_confirm_code($confirm_code_i)
    {
        $this->confirm_code = $confirm_code_i;
    } // END FUNCTION

    function get_confirm_code()
    {
        return $this->confirm_code;
    } // END FUNCTION

    function set_create_timestamp($create_timestamp_i)
    {
        $this->create_timestamp = $create_timestamp_i;
    } // END FUNCTION

    function get_create_timestamp($create_timestamp_i)
    {
        return $this->create_timestamp;
    } // END FUNCTION

    function set_update_timestamp($update_timestamp_i)
    {
        $this->update_timestamp = $update_timestamp_i;
    } // END FUNCTION

    function get_update_timestamp($update_timestamp_i)
    {
        return $this->update_timestamp;
    } // END FUNCTION

    function set_error_message($error_message_i)
    {
        $this->error_message = $error_message_i;
    } // END FUNCTION

    function get_error_message()
    {
        return $this->error_message;
    } // END FUNCTION

    function set_utils($utils_i) {
      $this->utils = $utils_i;
    }

    function get_utils()
    {
        if(($this->utils) === null) {
          return new Utils();
        }
        return $this->utils;
    } // END FUNCTION

    //-------Public Helper functions -------------
    function GetErrorMessage()
    {
        if (empty($this->error_message)) {
            return '';
        }
        $errormsg = nl2br(htmlentities($this->error_message));
        return $errormsg;
    } // END FUNCTION

    //-------Private Helper functions-----------
    function HandleError($err)
    {
        $this->error_message .= $err . "\r\n";
    } // END FUNCTION

    function HandleDBError($err)
    {
        $this->HandleError($err);
    } // END FUNCTION

    //-------Main Operations ----------------------
    function getUser($user_id_i) {
        $query     = "SELECT USERNAME, EMAIL FROM USER WHERE ID='$user_id_i'";
        $result    = DB::query($query);
        if(DB::count() > 0) {
            $this->set_id($user_id_i);
            $this->set_username($result[0]['USERNAME']);
            $this->set_email($result[0]['EMAIL']);
            return $this;
        }
    }

    function isEmailUnique($email_i) {
        $query     = "SELECT EMAIL FROM USER WHERE EMAIL='$email_i'";
        $result    = DB::query($query);
        if (DB::count() > 0) {
            echo "There is already a registered user under that account, please try again. ";
            return false;
        }
        return true;
    }

    function updateUserEmail($user_id_i, $email) {
        if ($this->isEmailUnique($email)) {
            try {
                DB::update('USER', array(
                    'EMAIL' => $email
                ), 'ID=%s', $user_id_i);
            } catch (MeekroDBException $e) {
                $this->HandleDBError($e->getMessage());
                return false;
            }
            return true;
        }
        return false;
    }

    function updateUserPassword($user_id_i, $password) {
        try {
            DB::update('USER', array(
                'password' => $password
            ), 'ID=%s', $user_id_i);
        } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    }

    function deleteUser($user_id_i) {
        try {
            DB::delete('USER',
                'ID=%s', $user_id_i);
        } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    }


} // END CLASS
?>
