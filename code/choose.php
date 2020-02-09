<?
function getLastId() {
    global $__tarambola_CONN__;

    $sql = "SELECT * From tara_unique_id ORDER BY id DESC LIMIT 1";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        $stmt->execute();

        $object = $stmt->fetchObject();
    }
    return($object);
}

$id = getLastId();
?>