<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
 require_once __DIR__ . '/../formvalidator.php';
 require_once __DIR__ . '/../utils.php';

class CommentT
{
    //----- Variables -------
    var $video_id;
    var $id;
    var $name;
    var $comment;
    var $insert_timestamp;
    var $insert_user_id;

    // Error Message Handler
    var $error_message;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function CommentT()
    {
        self::__construct();
    } // END FUNCTION

    function set_video_id($video_id_i)
    {
        $this->video_id = $video_id_i;
    } // END FUNCTION

    function get_video_id()
    {
        return $this->video_id;
    } // END FUNCTION

    function set_id($id_i)
    {
        $this->id = $id_i;
    } // END FUNCTION

    function get_id()
    {
        return $this->id;
    } // END FUNCTION

    function set_name($name_i)
    {
        $this->name = $name_i;
    } // END FUNCTION

    function get_name()
    {
        return $this->name;
    } // END FUNCTION

    function set_comment($comment_i)
    {
        $this->comment = $comment_i;
    } // END FUNCTION

    function get_comment()
    {
        return $this->comment;
    } // END FUNCTION

    function set_insert_timestamp($insert_timestamp_i)
    {
        $this->insert_timestamp = $insert_timestamp_i;
    } // END FUNCTION

    function get_insert_timestamp()
    {
        return $this->insert_timestamp;
    } // END FUNCTION

    function set_insert_user_id($insert_user_id_i)
    {
        $this->insert_user_id = $insert_user_id_i;
    } // END FUNCTION

    function get_insert_user_id()
    {
        return $this->insert_user_id;
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


    //-------Public Helper functions -------------


} // END CLASS
?>
