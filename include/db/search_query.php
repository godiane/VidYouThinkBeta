<?PHP
/**
 * Search Query
 *
 * @author DIGO
 */
require_once __DIR__ . '/../formvalidator.php';
require_once __DIR__ . '/../utils.php';

class SearchQueryT
{
    //----- Variables -------
    var $id;
    var $user_id;
    var $query;
    var $create_timestamp;

    // Error Message Handler
    var $error_message;

    // Utilities
    var $utils;

    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function SearchQueryT()
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

    function set_user_id($user_id_i)
    {
        $this->user_id = $user_id_i;
    } // END FUNCTION

    function get_user_id()
    {
        return $this->user_id;
    } // END FUNCTION

    function set_query($query_i)
    {
        $this->query = $query_i;
    } // END FUNCTION

    function get_query($query_i)
    {
        return $this->query;
    } // END FUNCTION

    function set_create_timestamp($create_timestamp_i)
    {
        $this->create_timestamp = $create_timestamp_i;
    } // END FUNCTION

    function get_create_timestamp($create_timestamp_i)
    {
        return $this->create_timestamp;
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

    //-------Main Operations ----------------------
    function SaveSearch()
    {
        if (!isset($_GET['submitted'])) {
            return false;
        }
        $this->user_id = $_SESSION['id_of_user'];
        $this->query = $this->get_utils()->sanitize($_GET['q']);

        if (!$this->ValidateSearchSubmission()) {
            $this->HandleError("Submission is invalid.");
            return false;
        }

        if (!$this->SaveSearchToDatabase()) {
            return false;
        }
        return true;
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

    function ValidateSearchSubmission()
    {
        $validator = new FormValidator();
        $validator->addValidation("q", "req", "Please fill in search query.");

        if (!$validator->ValidateForm()) {
            $error      = '';
            $error_hash = $validator->GetErrors();
            foreach ($error_hash as $inpname => $inp_err) {
                $error .= $inpname . ':' . $inp_err . "\n";
            }
            $this->HandleError($error);
            return false;
        }
        return true;
    } // END FUNCTION

    function IsSearchUnique($user_id_input, $query_input) {
      if (!$this->IsFieldUnique($this->user_id, 'USER_ID', 'SEARCH_QUERY')
        && !$this->IsFieldUnique($this->query, 'QUERY', 'SEARCH_QUERY')) {
          echo "search query id: " . $this->get_search_query_id($user_id_input, $query_input);
          return false;
      }
      return true;
    }

    function SaveSearchToDatabase()
    {
        if (!$this->IsSearchUnique($this->user_id, $this->query)) {
            // TODO get the query from DB and just get all details from DB/json
            // echo $this->get_search_query_id($this->user_id, $this->query);
        } else {
            if (!$this->InsertSearchQueryIntoDB()) {
                $this->HandleError("Inserting to Database failed.");
                return false;
            }
        }
        return true;
    } // END FUNCTION

    function IsFieldUnique($value, $fieldname, $tablename)
    {
        $field_val = $this->get_utils()->sanitize_for_sql($value);
        $query     = "SELECT $fieldname FROM $tablename WHERE $fieldname=%s";
        $result    = DB::query($query, $field_val);
        if(DB::count() > 0)
        {
            return false;
        }
        return true;
    } // END FUNCTION

    /** Insert into USER table **/
    function InsertSearchQueryIntoDB() {

        try {
            DB::insert('SEARCH_QUERY', array(
                'USER_ID' => $this->user_id,
                'QUERY' => $this->query
            ));
        }
        catch (MeekroDBException $e) {
            $this->HandleDBError($e->getMessage());
            return false;
        }
        return true;
    } // END FUNCTION

    // Get Search Query ID from fields
    function get_search_query_id($user_id_i, $query_i) {
      // get
      $field_val1 = $this->get_utils()->sanitize_for_sql($user_id_i);
      $field_val2 = $this->get_utils()->sanitize_for_sql($user_id_i);
      $query     = "SELECT id FROM SEARCH_QUERY WHERE USER_ID=%s AND QUERY=%s";
      $result    = DB::query($query, $field_val1, $field_val2);

      if(DB::count() > 0) {
        return $result[0];
      } else {
        return "";
      }
    }

} // END CLASS
?>
