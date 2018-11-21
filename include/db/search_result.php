<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
require_once __DIR__ . '/formvalidator.php';
require_once __DIR__ . '/utils.php';

class SearchResultT
{
    //----- Variables -------
    var $id;
    var $search_query_id;
    var $video_id;

    // Error Message Handler
    var $error_message;

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

    //-------Main Operations ----------------------


    //-------Public Helper functions -------------


} // END CLASS
?>
