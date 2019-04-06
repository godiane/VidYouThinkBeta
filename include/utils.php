<?php
/**
 * Utils
 *
 * @author DIGO
 */

class Utils
{
    //-----Initialization -------
    function __construct()
    {
    } // END FUNCTION

    function Utils()
    {
        self::__construct();
    } // END FUNCTION

    //-------Main Operations ----------------------
    function truncate($string, $length = 100)
    {
        $string = trim($string);
        $pos    = strpos($string, ' ', $length);
        return substr($string, 0, $pos);
    } // END FUNCTION

    function format_sentiment($text)
    {
        $format = 'text-primary';
        if (strcasecmp("negative", $text) == 0) {
            $format = 'text-danger';
        } else if (strcasecmp("positive", $text) == 0) {
            $format = 'text-success';
        } else if (strcasecmp("neutral", $text) == 0) {
            $format = 'text-muted';
        }
        return '<span class="' . $format . '">' . $text . '</span>';
    } // END FUNCTION

    function sanitize($str, $remove_nl = true)
    {
        $str = $this->strip_slashes($str);

        if ($remove_nl) {
            $injections = array(
                '/(\n+)/i',
                '/(\r+)/i',
                '/(\t+)/i',
                '/(%0A+)/i',
                '/(%0D+)/i',
                '/(%08+)/i',
                '/(%09+)/i'
            );
            $str = preg_replace($injections, '', $str);
        }
        return $str;
    } // END FUNCTION

    function strip_slashes($str)
    {
        if (get_magic_quotes_gpc()) {
            $str = stripslashes($str);
        }
        return $str;
    } // END FUNCTION

    function sanitize_for_sql($str)
    {
        return addslashes($str);
    } // END FUNCTION

    function base64UrlEncode($inputStr)
    {
        return strtr(base64_encode($inputStr), '+/=', '-_,');
    }

    function base64UrlDecode($inputStr)
    {
        return base64_decode(strtr($inputStr, '-_,', '+/='));
    }
}

?>
