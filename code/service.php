<?

if (isset($_GET['opt'])) {
    $__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);

    if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == 'mysql')
        $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

    Record::connection($__tarambola_CONN__);
    Record::getConnection()->exec("set names 'utf8'");

    if ($_GET['opt'] == "win") { //****************************************************** WIN SEND EMAIL
        $user = getUser($_GET['id']);
        $nome = $user->content('nome');
        $email = $user->content('email');
        echo($nome . ' - ' . $email);
        echo(updatePremio($_GET['id'], $_GET['premio']));
        echo(sendEmail($nome, $email, $_GET['premio']));
        incrementPremio();
    } else if ($_GET['opt'] == "loose") { //************************************************ LOSE
    } else if ($_GET['opt'] == "getid") { //************************************************ GET UNIQUE ID
        require_once SERVER_URL . 'tarambola/app/classes/Item.php';

        $premios = getPremiosByDate();
        if ($premios == null) {
            insertPremios();
            $premios = getPremiosByDate();
        }
        $config = getConfig();

        $p = new Item();
        $p = $p->getPageById(315);
        echo('<?xml version="1.0" encoding="UTF-8"?>' .
            '<data>' .
            '<unique_id>' . generateId() . '</unique_id>' .
            '<connect_msg>' .
            '<msg_1>' . $p->content("connect_1") . '</msg_1>' .
            '<msg_2>' . $p->content("connect_2") . '</msg_2>' .
            '<msg_3>' . $p->content("connect_3") . '</msg_3>' .
            '</connect_msg>' .
            '<slot_msg>' .
            '<msg_1>' . $p->content("slot_1") . '</msg_1>' .
            '<msg_2>' . $p->content("slot_2") . '</msg_2>' .
            '</slot_msg>' .
            '<loose_msg>' .
            '<msg_1>' . $p->content("loose_1") . '</msg_1>' .
            '<msg_2>' . $p->content("loose_2") . '</msg_2>' .
            '<msg_3>' . $p->content("loose_3") . '</msg_3>' .
            '<msg_4>' . $p->content("loose_4") . '</msg_4>' .
            '<msg_5>' . $p->content("loose_5") . '</msg_5>' .
            '</loose_msg>' .
            '<win_msg>' .
            '<msg_1>' . $p->content("win_1") . '</msg_1>' .
            '<msg_2>' . $p->content("win_2") . '</msg_2>' .
            '</win_msg>' .
            '<prizes>' .
            '<act_prizes>' . $premios->qtd . '</act_prizes>' .
            '<max_prize>' . $config->content('nr_premios') . '</max_prize>' .
            '<last_prize>' . $premios->last . '</last_prize>' .
            '</prizes>' .
            '</data>'
        );
    }
} else {
    $config = getConfig();
    $user = getUser($_GET['id']);
    $attempts = getAttempts($user->content('email'));
    $attempts = intval($config->content('max_attempts')) - $attempts;
    $premios = getPremiosByDate();
    if ($premios == null) {
        insertPremios();
        $premios = getPremiosByDate();
    }
    echo('<?xml version="1.0" encoding="UTF-8"?>' .
        '<user>' .
        '<id>' . $user->id . '</id>' .
        '<nome>' . $user->content('nome') . '</nome>' .
        '<email>' . $user->content('email') . '</email>' .
        '<unique_id>' . $user->content('unique_id') . '</unique_id>' .
        '<attempts>' . $attempts . '</attempts>' .
        '<maxAttempts>' . $config->content('max_attempts') . '</maxAttempts>' .
        '</user>');
}

//*************************** FUNCTIONS *********************************//
function getUser($id)
{
    require_once SERVER_URL . 'tarambola/app/classes/Item.php';
    $p = new Item();
    $p = $p->getPageById($id);
    return ($p);
}

function getAttempts($email)
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
        return $object->count;
    } else {
        return (-1);
    }
}

function getConfig()
{
    require_once SERVER_URL . 'tarambola/app/classes/Item.php';
    $p = new Item();
    $p = $p->getPageById(130);
    return ($p);
}

function generateId()
{
    $c = uniqid(rand(), true);
    $md5c = md5($c);

    global $__tarambola_CONN__;

    $sql = "INSERT INTO tara_unique_id (unique_id)
                VALUES ('" . $md5c . "')";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {

        if ($stmt->execute()) {
            $flag = $md5c;
        } else
            $flag = 0;
    }
    return ($flag);
}

function sendEmail($nome, $email, $premio)
{
    require_once SERVER_URL . 'tarambola/app/classes/mail/Mailer.php';
    require_once SERVER_URL . 'tarambola/app/classes/mail/EmailGetter.php';
    require_once SERVER_URL . 'tarambola/app/classes/mail/EmailGetter.php';
    require_once SERVER_URL . 'tarambola/app/classes/Item.php';

    $config = getConfig();
    $premio = $config->content('premio' . $premio);

    $mensagens = new Item();
    $mensagens = $mensagens->getPageById(368);
    $titulo = $mensagens->content('titulo');
    $texto1 = $mensagens->content('texto1');
    $texto2 = $mensagens->content('texto2');

    $headerImg = $config->getFirstImage('', 'header_img');
    $footerImg = $config->getFirstImage('', 'footer_img');
    echo("headerImg: " . $headerImg);
    echo("footerImg: " . $footerImg);
    $headerHtml = '';
    $footerHtml = '';
    if ($headerImg != URL_PUBLIC . "public/images/tara_default") {
        $headerHtml = '<img src="' . $headerImg . '" width="400" alt="header" />';
    }
    if ($footerImg != URL_PUBLIC . "public/images/tara_default") {
        $footerHtml = '<img src="' . $footerImg . '" width="200" alt="footer" />';
    }
    echo("headerHtml: " . $headerHtml);
    echo("footerHtml: " . $footerHtml);

    $body = '<!DOCTYPE html>
                <html>
                    <head>
                        <title></title>
                        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    </head>
                    <body style="background-color:#eee;padding:0;border:0;margin:0;">
                    <center>
                        <table width="600px" border="0" cellpadding="0" cellspacing="0" style="background-color:#eeeeee;padding:0;border:0;margin:0;">
                            <tr>
                                <td style="background-color:#FFF;padding:20px">
                            <center>
                            ' . $headerHtml . '
                                <br><br>
                                <h3 style="font-family:\'arial\', sans-sarif;color:#444">' . $titulo . '</h3>
                                <p style="font-family:\'arial\', sans-sarif;color:#444">' . $texto1 . '</b></p>
                                <p style="font-family:\'arial\', sans-sarif;color:#444">';
                                $body .= $premio;
                                $body .= '</p>
                                <p style="font-family:\'arial\', sans-sarif;color:#444">' . $texto2 . '</p>
                                <br><br>
                                ' . $footerHtml . '
                                <br />
                            </center>
                            </td>
                            </tr>
                        </table>
                    </center>
                </body>
                </html>';

    $mailer = new Mailer("paulo@mail.com", "CONTINENTE - SLOT MACHINE", $email, $titulo, $body);

    return ($mailer->sendMail());
}

function updatePremio($id, $premio)
{
    global $__tarambola_CONN__;

    $sql = "UPDATE tara_page_part SET content='" . $premio . "', content_html='" . $premio . "' WHERE name='premio' AND page_id='" . $id . "'";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    return ($flag);
}

function incrementPremio()
{
    global $__tarambola_CONN__;

    $hasPremio = getPremiosByDate();

    if ($hasPremio != null)
        $premio = $hasPremio->id;
    else
        $premio = insertPremios();

    $sql = "UPDATE tara_premios_diarios SET qtd=qtd+1, time=CURTIME() WHERE id='" . $premio . "'";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        if ($stmt->execute())
            $flag = 1;
        else
            $flag = 0;
    }
    return ($flag);
}

function getPremiosByDate()
{
    global $__tarambola_CONN__;

    $sql = "SELECT *, CURTIME(), (CURTIME()-TIME(time)) AS last FROM tara_premios_diarios WHERE data= DATE(NOW())";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {
        $stmt->execute();

        $object = $stmt->fetchObject();
    }
    return ($object);
}

function insertPremios()
{
    global $__tarambola_CONN__;

    $sql = "INSERT INTO tara_premios_diarios (data, qtd)
                VALUES (NOW(), '0')";

    if ($stmt = $__tarambola_CONN__->prepare($sql)) {

        if ($stmt->execute()) {
            $id = $__tarambola_CONN__->lastInsertId();
            $flag = $id;
        } else
            $flag = 0;
    }
    return ($flag);
}

