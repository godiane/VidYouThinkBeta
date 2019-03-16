<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
require_once __DIR__ . '/../formvalidator.php';
require_once __DIR__ . '/../utils.php';
require_once __DIR__ . '/video.php';

class SearchResultT
{
    //----- Variables -------
    var $id;
    var $search_query_id;
    var $video_id;

    // Error Message Handler
    var $error_message;

    // Utilities
    var $utils;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function SearchResultT()
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

    function set_search_query_id($search_query_id_i)
    {
        $this->search_query_id = $search_query_id_i;
    } // END FUNCTION

    function get_search_query_id()
    {
        return $this->search_query_id;
    } // END FUNCTION

    function set_video_id($video_id_i)
    {
        $this->video_id = $video_id_i;
    } // END FUNCTION

    function get_video_id()
    {
        return $this->video_id;
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

    // TODO GET FROM SEARCH_RESULT TABLE
    function GetSearchResultsFromDB($search_query_id_i) {

      $field_val1 = $this->get_utils()->sanitize_for_sql($user_id_i);
      $field_val2 = $this->get_utils()->sanitize_for_sql($query_i);
      $query = "SELECT * FROM SEARCH_RESULT WHERE SEARCH_QUERY_ID = %s";
      $result    = DB::query($query, $field_val1);

      if(DB::count() > 0) {
        return $result[0];
      } else {
        return "";
      }
    }

    /** Insert into SEARCH_RESULT table **/
    function InsertSearchResultIntoDB($search_query_id_i, $yt_id_i, $user_id_i) {

      $video_i = new VideoT();
      $video_id_i = $video_i->getVideoId($user_id_i, $yt_id_i);

      if (!empty($video_id_i)) {
        $this->search_query_id = $this->get_utils()->
          sanitize_for_sql($search_query_id_i);

          $this->video_id = $this->get_utils()->
            sanitize_for_sql($video_id_i);

          $uniqueId = uniqid('vyt',true);

          try {
              DB::insert('SEARCH_RESULT', array(
                  'ID' => $uniqueId,
                  'SEARCH_QUERY_ID' => $this->search_query_id,
                  'VIDEO_ID' => $this->video_id
              ));
          }
          catch (MeekroDBException $e) {
              $this->HandleDBError($e->getMessage());
              return false;
          }
          return true;
      }
      return false;
    } // END FUNCTION

    // Get Top Search Result Based on Overall Views
    function getTopSearchResult($search_query_id_i) {
        try {
            $results = DB::query(
                "SELECT * FROM VIDEO V " .
                "INNER JOIN RATING R ON V.YT_ID = R.VIDEO_ID " .
                "INNER JOIN SEARCH_RESULT SR ON V.ID = SR.VIDEO_ID " .
                "WHERE SR.SEARCH_QUERY_ID=%s_SEARCH_QUERY_ID " .
                "ORDER BY R.OVERALL_VIEW DESC " .
                "LIMIT 1",
                array(
                    'SEARCH_QUERY_ID' => $search_query_id_i
                ));
        }
        catch (MeekroDBException $e) {
            echo $e->getMessage();
            $this->HandleDBError($e->getMessage());
            return null;
        }
        return $results;
    }

    function deleteSearchResults($search_query_id_i) {
        try {
            DB::delete('SEARCH_RESULTS',
                'SEARCH_QUERY_ID = %s',
                $search_query_id_i
            );
        }
        catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    }


    //-------Public Helper functions -------------


} // END CLASS
?>
