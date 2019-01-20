<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
 require_once __DIR__ . '/../formvalidator.php';
 require_once __DIR__ . '/../utils.php';

class CaptionT
{
    //----- Variables -------
    var $video_id;
    var $id;
    var $caption;
    var $insert_timestamp;
    var $insert_user_id;

    // Error Message Handler
    var $error_message;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function CaptionT()
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

    function set_caption($caption_i)
    {
        $this->caption = $caption_i;
    } // END FUNCTION

    function get_caption()
    {
        return $this->caption;
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
