<?php

require_once '../../config.php';
require_once(SERVER_URL . "tarambola/app/classes/Comments.php");
require_once '../../tarambola/app/classes/Mailer.php';
$body = 'Nome:</br>' . $_POST['nome'] . '</br></br>Email:</br>' . $_POST['email'] . '</br></br>Telefone:</br>' . $_POST['telefone'] . '</br></br>Enviado através de csw.com';
$mailer = new Mailer($_POST['email'], $_POST['nome'], 'nunocastro@tarambola.pt', "Enviado através de csw.com", $body);
if ($_POST['nome']) {
    if ($mailer->sendMail())
        echo('<div style="background-color:#EBFCDE;width:100%; height:40px; text-align:center; padding-top:15px;margin-top:40px;"><h4>Email Enviado!</h4></div>');
    else
        echo('<div style="background-color:#FF6C22;width:100%; height:40px; text-align:center; padding:10px;margin-top:40px;"><h4>Erro ao enviar Email!</h4></div>');
}
?>