<?PHP
/**
 * Video
 *
 * @author DIGO
 */
require_once __DIR__ . '/../formvalidator.php';
require_once __DIR__ . '/../utils.php';

class VideoT
{
    //----- Variables -------
    var $id;
    var $yt_id;
    var $url;
    var $title;
    var $channel_title;
    var $category;
    var $description;
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

    function VideoT()
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

    function set_yt_id($yt_id_i)
    {
        $this->yt_id = $yt_id_i;
    } // END FUNCTION

    function get_yt_id()
    {
        return $this->yt_id;
    } // END FUNCTION

    function set_url($url_i)
    {
        $this->url = $url_i;
    } // END FUNCTION

    function get_url()
    {
        return $this->url;
    } // END FUNCTION

    function set_title($title_i)
    {
        $this->title = $title_i;
    } // END FUNCTION

    function get_title()
    {
        return $this->title;
    } // END FUNCTION

    function set_channel_title($channel_title_i)
    {
        $this->channel_title = $channel_title_i;
    } // END FUNCTION

    function get_channel_title()
    {
        return $this->channel_title;
    } // END FUNCTION

    function set_category($category_i)
    {
        $this->category = $category_i;
    } // END FUNCTION

    function get_category()
    {
        return $this->category;
    } // END FUNCTION

    function set_description($description_i)
    {
        $this->description = $description_i;
    } // END FUNCTION

    function get_description()
    {
        return $this->description;
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
    /** Insert into VIDEO table **/
    function InsertVideoIntoDB() {
      // TODO SanitizeForSQL
      $uniqueId = uniqid('vyt',true);

        try {
            DB::insert('VIDEO', array(
                'ID' => $uniqueId,
                'YT_ID' => $this->yt_id,
                'URL' => $this->url,
                'TITLE' => $this->title,
                'CHANNEL_TITLE' => $this->channel_title,
                'CATEGORY' => $this->category,
                'DESCRIPTION' => $this->description,
                'INSERT_USER_ID' => $this->insert_user_id,
                'SEARCH_QUERY_ID' => $this->search_query_id
            ));
        }
        catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    } // END FUNCTION

    /**
    ** Get Video ID
    **
    ** @param $user_id_i - UserID
    ** @param $yt_id_i - YouTubeID
    ** @return video_id VideoID
    */
    function getVideoId($user_id_i, $yt_id_i) {
      // get
      $field_val1 = $this->get_utils()->sanitize_for_sql($user_id_i);
      $field_val2 = $this->get_utils()->sanitize_for_sql($yt_id_i);
      $query     = "SELECT id FROM VIDEO WHERE INSERT_USER_ID=%s AND YT_ID=%s";
      $result    = DB::query($query, $field_val1, $field_val2);

      if(DB::count() > 0) {
        return $result[0]['id'];
      }
      return "";
    }

    /**
    ** Delete Video By Search Query
    **
    ** @param $search_query_id_i - SearchQueryID
    ** @return boolean
    */
    function deleteVideoBySearchQuery($search_query_id_i) {
        try {
            DB::delete('VIDEO',
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
    ** Delete Video By User
    **
    ** @param $user_id_i - UserID
    ** @return boolean
    */
    function deleteVideoByUser($user_id_i) {
        try {
            DB::delete('VIDEO',
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
