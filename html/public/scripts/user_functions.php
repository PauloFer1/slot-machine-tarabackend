<?php
include_once("../../config.php");
require_once('../../tarambola/Framework.php');

//********************************* DB CONNECTION ***********************************************//
$__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);

if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == 'mysql')
    $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

Record::connection($__tarambola_CONN__);
Record::getConnection()->exec("set names 'utf8'");
//********************************* END DB CONNECTION ***********************************************//

$url = explode("/", ($_SERVER["REQUEST_URI"]));

if ($url[sizeof($url) - 1] == "register") //************** REGISTO
{
    if (hasPlayer($_POST['unique_id'])) {
        $resp = 0;
    } else {
        if (hadPlayed($_POST['email'])) {
            $resp = -1;
        } else {
            $flag = insertPage($_POST['nome'], $_POST['email'], $_POST['unique_id']);
            $resp = $flag;
        }
    }
    echo($resp);
} else if ($url[sizeof($url) - 1] == "logout") //************** LOGOUT
{
    $logout = logout();
    echo($logout);
}


//################ FUNCTIONS #########################//
function hadPlayed($email)
{
    global $__tarambola_CONN__;

    $sql = "SELECT DISTINCT count(p.id) AS count From tara_page_part AS p INNER JOIN tara_page_part AS p2 ON p2.page_id=p.page_id WHERE p.name='data' AND DAY(NOW())=DAY(p.content) AND MONTH(NOW())=MONTH(p.content) AND YEAR(NOW())=YEAR(p.content) AND p2.name='email' AND p2.content='" . $email . "'";
    $arr = array();
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        $stmt->execute();
        $object = $stmt->fetchObject();
    }

    $config = getConfig();

    if ($object->count < intval($config->content('max_attempts'))) {
        return false;
    } else {
        return (true);
    }
}

function getConfig()
{
    require_once SERVER_URL . 'tarambola/app/classes/Item.php';
    $p = new Item();
    $p = $p->getPageById(130);
    return ($p);
}

function existsDate($id)
{
    global $__tarambola_CONN__;

    $data =
    $sql = "SELECT COUNT(*) AS count From tara_page_part WHERE name='data' AND DAY(NOW())=DAY(content) AND MONTH(NOW())=MONTH(content) AND YEAR(NOW())=YEAR(content) AND page_id='" . $id . "'";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        $stmt->execute();

        $object = $stmt->fetchObject();
    }
    if ($object->count == 0) {
        return false;
    } else {
        return (true);
    }
}

function hasPlayer($unique_id)
{
    global $__tarambola_CONN__;

    $sql = "SELECT COUNT(*) AS count From tara_page_part WHERE name='unique_id' AND content = '" . $unique_id . "'";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        $stmt->execute();

        $object = $stmt->fetchObject();
    }
    if ($object->count == 0) {
        return false;
    } else {
        return (true);
    }
}

function incPlayer($id)
{
    global $__tarambola_CONN__;
    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id) VALUES ('data', NOW(), NOW()', '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {

        if ($stmt->execute()) {
            $flag = 1;
        } else
            $flag = 0;

    }
    return ($flag);
}

function insertPage($nome, $email, $unique_id)
{
    global $__tarambola_CONN__;

    $sql = "INSERT INTO tara_page (title, slug, breadcrumb, parent_id, layout_id, status_id, created_on, created_by_id)
                VALUES ('" . $nome . "', '" . $nome . "', '" . $nome . "', '17', '0', '0', NOW(), '1')";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {

        if ($stmt->execute()) {
            $id = $__tarambola_CONN__->lastInsertId();
            $flag = $id;
            insertPageMetadata($id);
            insertPageParts($id, $nome, $email, $unique_id);
        } else
            $flag = 0;

    }
    return ($flag);
}

function insertPageMetadata($id)
{
    global $__tarambola_CONN__;

    $sql = "INSERT INTO tara_page_metadata (visible, page_id, keyword, value)
                VALUES ('0', '" . $id . "', 'page_part_forms', '7')";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {

        if ($stmt->execute()) {
            $flag = 1;
        } else
            $flag = 0;

    }
    return ($flag);
}

function insertPageParts($id, $nome, $email, $unique_id)
{
    global $__tarambola_CONN__;

    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id)
                VALUES ('nome', '" . $nome . "', '" . $nome . "', '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id)
                VALUES ('email', '" . $email . "', '" . $email . "', '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id)
                VALUES ('data', NOW(), NOW(), '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id)
                VALUES ('unique_id', '" . $unique_id . "', '" . $unique_id . "', '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    $sql = "INSERT INTO tara_page_part (name, content, content_html, page_id)
                VALUES ('premio', '', '', '" . $id . "')";
    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    return ($flag);
}