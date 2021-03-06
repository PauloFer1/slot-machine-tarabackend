<?php


require APP_PATH . '/models/Plugin.php';
require APP_PATH . '/classes/Page.php';

if ( ! defined('HELPER_PATH')) define('HELPER_PATH', CORE_ROOT.'/helpers');
if ( ! defined('URL_SUFFIX')) define('URL_SUFFIX', '');

ini_set('date.timezone', DEFAULT_TIMEZONE);
if(function_exists('date_default_timezone_set'))
    date_default_timezone_set(DEFAULT_TIMEZONE);
else
    putenv('TZ='.DEFAULT_TIMEZONE);

// Intialize Setting and Plugin
Setting::init();
Plugin::init();

/**
 * Explode an URI and make a array of params
 */
function explode_uri($uri)
{
    return preg_split('/\//', $uri, -1, PREG_SPLIT_NO_EMPTY);
}

function find_page_by_uri($uri)
{
    global $__tarambola_CONN__;
    
    $uri = trim($uri, '/');
    
    $has_behavior = false;
    
    // adding the home root
    $urls = array_merge(array(''), explode_uri($uri));
    $url = '';
 
    $page = new stdClass;
    $page->id = 0;
    
    $parent = false;
    
    foreach ($urls as $page_slug)
    {
        $url = ltrim($url . '/' . $page_slug, '/');
        
        if ($page = find_page_by_slug($page_slug, $parent))
        {
            // check for behavior
            if ($page->behavior_id != '')
            {
                // add a instance of the behavior with the name of the behavior 
                $params = explode_uri(substr($uri, strlen($url)));
                $page->{$page->behavior_id} = Behavior::load($page->behavior_id, $page, $params);
                
                return $page;
            }
        }
        else
        {
            break;
        }
        
        $parent = $page;
        
    } // foreach
    
    return ( ! $page && $has_behavior) ? $parent: $page;
} // find_page_by_slug

function find_page_by_slug($slug, &$parent)
{
    global $__tarambola_CONN__;
    
    $page_class = 'Page';
    
    $parent_id = $parent ? $parent->id: 0;
    
    $sql = 'SELECT page.*, author.name AS author, updator.name AS updator '
         . 'FROM '.TABLE_PREFIX.'page AS page '
         . 'LEFT JOIN '.TABLE_PREFIX.'user AS author ON author.id = page.created_by_id '
         . 'LEFT JOIN '.TABLE_PREFIX.'user AS updator ON updator.id = page.updated_by_id '
         . 'WHERE slug = ? AND parent_id = ? AND (status_id='.Page::STATUS_REVIEWED.' OR status_id='.Page::STATUS_PUBLISHED.' OR status_id='.Page::STATUS_HIDDEN.')';
    
    $stmt = $__tarambola_CONN__->prepare($sql);
    
    $stmt->execute(array($slug, $parent_id));
    
    if ($page = $stmt->fetchObject())
    {
        // hook to be able to redefine the page class with behavior
        if ( ! empty($parent->behavior_id))
        {
            // will return Page by default (if not found!)
            $page_class = Behavior::loadPageHack($parent->behavior_id);
        }
        
        // create the object page
        $page = new $page_class($page, $parent);
        
        // assign all is parts
        $page->part = get_parts($page->id);
        
        return $page;
    }
    else return false;
}
function find_page_by_id($id)
{
    global $__tarambola_CONN__;

    $page_class = 'Page';


    $sql = 'SELECT page.*, author.name AS author, updator.name AS updator '
         . 'FROM '.TABLE_PREFIX.'page AS page '
         . 'LEFT JOIN '.TABLE_PREFIX.'user AS author ON author.id = page.created_by_id '
         . 'LEFT JOIN '.TABLE_PREFIX.'user AS updator ON updator.id = page.updated_by_id '
         . 'WHERE id = ? AND (status_id='.Page::STATUS_REVIEWED.' OR status_id='.Page::STATUS_PUBLISHED.' OR status_id='.Page::STATUS_HIDDEN.')';

    $stmt = $__tarambola_CONN__->prepare($sql);

    $stmt->execute(array($id));

    if ($page = $stmt->fetchObject())
    {
        // hook to be able to redefine the page class with behavior
        if ( ! empty($parent->behavior_id))
        {
            // will return Page by default (if not found!)
            $page_class = Behavior::loadPageHack($parent->behavior_id);
        }

        // create the object page
        $page = new $page_class($page, $parent);

        // assign all is parts
        $page->part = get_parts($page->id);

        return $page;
    }
    else return false;
}
function get_parts($page_id, $cond=null)
{
    if($cond==null)
    {
        global $__tarambola_CONN__;

        $objPart = new stdClass;

        $sql = 'SELECT name, content_html FROM '.TABLE_PREFIX.'page_part WHERE page_id=?';

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute(array($page_id));

            while ($part = $stmt->fetchObject())
                $objPart->{$part->name} = $part;
        }
    }
    else
        {
            global $__tarambola_CONN__;

            $objPart = new stdClass;

            $sql = 'SELECT name, content_html FROM '.TABLE_PREFIX.'page_part WHERE page_id=?'.$cond;

            if ($stmt = $__tarambola_CONN__->prepare($sql))
            {
                $stmt->execute(array($page_id));

                while ($part = $stmt->fetchObject())
                    $objPart->{$part->name} = $part;
           }
        }
    
    return $objPart;
}

function url_match($url)
{
    $url = trim($url, '/');
    
    if (CURRENT_URI == $url)
        return true;
    
    return false;
}
  
function url_start_with($url)
{
    $url = trim($url, '/');
    
    if (CURRENT_URI == $url)
        return true;
    
    if (strpos(CURRENT_URI, $url) === 0)
        return true;
    
    return false;
}

function main()
{
    // get the uri string from the query
    $uri = $_SERVER['QUERY_STRING'];

    // START processing $_GET variables
    // If we're NOT using mod_rewrite, we check for GET variables we need to integrate
    if (!USE_MOD_REWRITE && strpos($uri, '?') !== false)
    {
        $_GET = array(); // empty $_GET array since we're going to rebuild it
        list($uri, $get_var) = explode('?', $uri);
        $exploded_get = explode('&', $get_var);
        
        if (count($exploded_get))
        {
            foreach ($exploded_get as $get)
            {
                list($key, $value) = explode('=', $get);
                $_GET[$key] = $value;
            }
        }
    }
    // We're NOT using mod_rewrite, and there's no question mark wich points to GET variables in combination with site root.
    else if (!USE_MOD_REWRITE && (strpos($uri, '&') !== false || strpos($uri, '=') !== false))
    {
        $uri='';
    }

    // If we're using mod_rewrite, we should have a PAGE entry.
    if (USE_MOD_REWRITE && array_key_exists('PAGE', $_GET))
    {
        $uri = $_GET['PAGE'];
        unset($_GET['PAGE']);
    }
    else if (USE_MOD_REWRITE)   // We're using mod_rewrite but don't have a PAGE entry, assume site root.
        $uri = '';

    // END processing $_GET variables

    // remove suffix page if founded
    if (URL_SUFFIX !== '' and URL_SUFFIX !== '/')
        $uri = preg_replace('#^(.*)('.URL_SUFFIX.')$#i', "$1", $uri);
    
    define('CURRENT_URI', trim($uri, '/'));

    Observer::notify('page_requested', $uri);
    
    // this is where 80% of the things is done
    $page = find_page_by_uri($uri);
    
    // if we fund it, display it!
    if (is_object($page))
    {
        // If page needs login, redirect to login
        if ($page->getLoginNeeded() == Page::LOGIN_REQUIRED)
        {
            AuthUser::load();
            if (!AuthUser::isLoggedIn()) {
                Flash::set('redirect', $page->url());
                redirect(URL_PUBLIC.ADMIN_DIR.(USE_MOD_REWRITE ? '/': '/?/').'login');
            }
        }       
        Observer::notify('page_found', $page);
        $page->_executeLayout();
    }
    else {
        page_not_found();
    }
    
} // main

// ok come on! let's go! (movie: Hacker's)
ob_start();
main();
ob_end_flush();