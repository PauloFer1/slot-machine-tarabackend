<?php
require_once '../../config.php';
require_once(SERVER_URL."tarambola/app/classes/Comments.php");


if(isset($_POST['posRegard']) && isset($_POST['posName']) && isset($_POST['posEmail']))
    {
        $com = new Comments();
        $com->title = $_POST['posRegard'];
        $com->breadcrumb = $_POST['posRegard'];
        $com->parent_id = 34;
        $com->slug = $_POST['posRegard'];
        $com->status_id = 1;

        $com->idPageRel=$_POST['notId'];
        $com->nome=$_POST['posName'];
        $com->mail=$_POST['posEmail'];
        $com->mensagem=$_POST['posText'];

        if($com->insertComment())
        {
            echo('<span id="alertFormSuccess" class="AlertForm">* Comentário enviado com sucesso.</br> Aguarde pela aprovação.</span>');
        }
        else
        {
            echo('<span id="alertFormErro" class="AlertForm">* Erro ao enviar comentário.</br> Por Favor tente novamente!</span>');
        }
    }
else
{
    echo('<span id="alertFormErro" class="AlertForm">* Erro ao enviar comentário.</br> Por Favor tente novamente!</span>');
}
?>
