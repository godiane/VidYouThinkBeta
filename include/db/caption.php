<?PHP
/**
 * Caption
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
    var $search_query_id;

    // Error Message Handler
    var $error_message;

    // Utilities
    var $utils;

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

    function set_search_query_id($search_query_id_i)
    {
        $this->search_query_id = $search_query_id_i;
    } // END FUNCTION

    function get_search_query_id()
    {
        return $this->search_query_id;
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
    /** Insert into CAPTION table **/
    function InsertCaptionIntoDB() {
      // TODO SanitizeForSQL
      $uniqueId = uniqid('vyt',true);

        try {
            DB::insertUpdate('CAPTION', array(
                'ID' => $uniqueId,
                'VIDEO_ID' => $this->video_id,
                'CAPTION' => $this->caption,
                'INSERT_USER_ID' => $this->insert_user_id,
                'SEARCH_QUERY_ID' => $this->search_query_id
            ));
        } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    } // END FUNCTION

    /**
    ** Delete Caption By Search Query
    **
    ** @param $search_query_id_i - SearchQueryID
    ** @return boolean
    */
    function deleteCaptionBySearchQuery($search_query_id_i) {
        try {
            DB::delete('CAPTION',
                'SEARCH_QUERY_ID = %s',
                $search_query_id_i
            );
        } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    }

    /**
    ** Delete Caption By User
    **
    ** @param $user_id_i - UserID
    ** @return boolean
    */
    function deleteCaptionByUser($user_id_i) {
        try {
            DB::delete('CAPTION',
                'INSERT_USER_ID = %s',
                $user_id_i
            );
        } catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    }
    //-------Public Helper functions -------------
} // END CLASS
?>
