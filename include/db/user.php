<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
require_once __DIR__ . '/formvalidator.php';
require_once __DIR__ . '/utils.php';

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

    function User()
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
