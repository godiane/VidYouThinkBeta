<?PHP
/**
 * Sentiment Rating
 *
 * @author DIGO
 */
require_once __DIR__ . '/../formvalidator.php';
require_once __DIR__ . '/../utils.php';

class SentimentRatingT
{
    //----- Variables -------
    var $id;
    var $rating;
    var $video_id;
    var $sentiment_type; // 1-overall, 2-phrase, 3-comment,
                         // 4-overall comment, 5-caption
    var $type_id; // 1-search_query_id, 2-comment_id, 3-caption_id
    var $insert_timestamp;
    var $insert_user_id;

    // Error Message Handler
    var $error_message;

    // Utilities
    var $utils;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function SentimentRatingT()
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

    function set_rating($rating_i)
    {
        $this->rating = $rating_i;
    } // END FUNCTION

    function get_rating()
    {
        return $this->rating;
    } // END FUNCTION

    function set_video_id($video_id_i)
    {
        $this->video_id = $video_id_i;
    } // END FUNCTION

    function get_video_id()
    {
        return $this->video_id;
    } // END FUNCTION

    function set_sentiment_type($sentiment_type_i)
    {
        $this->sentiment_type = $sentiment_type_i;
    } // END FUNCTION

    function get_sentiment_type()
    {
        return $this->sentiment_type;
    } // END FUNCTION

    function set_type_id($type_id_i)
    {
        $this->type_id = $type_id_i;
    } // END FUNCTION

    function get_type_id()
    {
        return $this->type_id;
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

    function set_utils($utils_i) {
        $this->utils = $utils_i;
    }

    function get_utils() {
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
    /** Insert into SENTIMENT_RATING table **/
    function InsertSentimentRatingIntoDB() {
      // TODO SanitizeForSQL
      $uniqueId = uniqid('vyt',true);
        try {
            DB::insertUpdate('SENTIMENT_RATING', array(
                'ID' => $uniqueId,
                'RATING' => $this->rating,
                'SENTIMENT_TYPE' => $this->sentiment_type,
                'VIDEO_ID' => $this->video_id,
                'TYPE_ID' => $this->type_id,
                'INSERT_USER_ID' => $this->insert_user_id
            ));
        } catch (MeekroDBException $e) {
            die($e->getMessage());
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    } // END FUNCTION

    // Get Top Search Result Based on Overall Views
    function getSentimentsFromDB($video_id_i) {
        try {
            $results = DB::query(
                "SELECT * FROM SENTIMENT_RATING SENTI " .
                "WHERE SENTI.VIDEO_ID=%s " .
                "ORDER BY SENTI.SENTIMENT_TYPE ",
                $video_id_i
            );
        }
        catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return null;
        }
        return $results;
    }

    // Get Top Search Result Based on Overall Views
    function getSentiment($video_id_i, $sentiment_type_i) {
        try {
            $results = DB::queryFirstRow(
                "SELECT rating FROM SENTIMENT_RATING SENTI " .
                "WHERE SENTI.VIDEO_ID=%s_VIDEO_ID " .
                "AND SENTI.SENTIMENT_TYPE=%s_SENTIMENT_TYPE " .
                "LIMIT 1 ",
                array(
                    'VIDEO_ID' => $video_id_i,
                    'SENTIMENT_TYPE' => $sentiment_type_i
                )
            );
            if(DB::count() == 0) {
              return "N/A";
            }
        }
        catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return null;
        }
        return $results['rating'];
    }
    //-------Public Helper functions -------------
} // END CLASS
?>
