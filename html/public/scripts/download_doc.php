<?php
require_once '../../config.php';
require_once SERVER_URL.'/tarambola/app/shoppingcart/AuthService.php';

$isLogged = loginCheck();

$file = basename($_GET['doc']);
$file = SERVER_URL.'public/documents/'.$file;


if(!$file){ // file does not exist
    die('file not found');
} else {
    header("Cache-Control: public");
    header("Content-Description: File Transfer");
    header("Content-Disposition: attachment; filename=$file");
    header("Content-Type: application/zip");
    header("Content-Transfer-Encoding: binary");

    // read the file from disk
    readfile($file);
}

?>
