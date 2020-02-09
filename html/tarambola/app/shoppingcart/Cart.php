<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Cart
 *
 * @author paulofernandes
 */
class Cart {
    public function __construct() {
        if(!isset($_SESSION['id']))
            $_SESSION['id']=session_id();
      /*  echo('</br>');
        var_dump($_SESSION['id']); 
        echo('</br>');
        var_dump(session_name());
        echo('</br>');
        var_dump($_SESSION);
        echo('</br>');
        var_dump(session_id());
        if(!isset($_COOKIE['session_id']))
        setcookie('session_id', session_id(), time()+3600);
        echo('</br>');
        var_dump($_COOKIE['session_id']);*/
    }
}

?>
