<?php
require_once '../../../../config.php';
require_once SERVER_URL.'/tarambola/app/shoppingcart/AuthService.php';


$url = explode("/",($_SERVER["REQUEST_URI"])); 

$__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);

if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == 'mysql')
    $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

Record::connection($__tarambola_CONN__);
Record::getConnection()->exec("set names 'utf8'");


if($url[sizeof($url)-1]=="add-item") //******************** 
{
    
}