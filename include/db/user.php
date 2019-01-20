<?PHP
/**
 * Search Query
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

    //-------Main Operations ----------------------

    //-------Private Helper functions-----------

} // END CLASS
?>
