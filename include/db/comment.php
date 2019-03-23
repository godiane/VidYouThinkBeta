<?PHP
/**
 * Comment
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
    var $yt_comment_id;
    var $name;
    var $comment;
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

    function set_yt_comment_id($yt_comment_id_i)
    {
        $this->yt_comment_id = $yt_comment_id_i;
    } // END FUNCTION

    function get_yt_comment_id()
    {
        return $this->yt_comment_id;
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
    /** Insert into COMMENT table **/
    function InsertCommentIntoDB() {
      // TODO SanitizeForSQL
      $uniqueId = uniqid('vyt',true);

        try {
            DB::insertUpdate('COMMENT', array(
                'ID' => $uniqueId,
                'YT_COMMENT_ID' => $this->yt_comment_id,
                'VIDEO_ID' => $this->video_id,
                'NAME' => $this->name,
                'COMMENT' => $this->get_utils()->sanitize_for_sql($this->comment),
                'INSERT_USER_ID' => $this->insert_user_id,
                'SEARCH_QUERY_ID' => $this->search_query_id
            ));
        }
        catch (MeekroDBException $e) {
            die($e->getMessage() . ' - ' .
                $this->get_utils()->sanitize_for_sql($this->comment));

            $this->HandleDBError($e->getMessage() . ' - ' .
                $this->get_utils()->sanitize_for_sql($this->comment));
            return false;
        }
        return true;
    } // END FUNCTION

    /**
    ** Delete Comment By Search Query
    **
    ** @param $search_query_id_i - SearchQueryID
    ** @return boolean
    */
    function deleteCommentBySearchQuery($search_query_id_i) {
        try {
            DB::delete('COMMENT',
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
    ** Delete Comment By User
    **
    ** @param $user_id_i - UserID
    ** @return boolean
    */
    function deleteCommentByUser($user_id_i) {
        try {
            DB::delete('COMMENT',
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
