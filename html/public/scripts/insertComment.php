<?php
require_once '../../config.php';
require_once(SERVER_URL."tarambola/app/classes/Comments.php");


if(isset($_POST['tara_nome']) && isset($_POST['tara_email']) && isset($_POST['tara_comentario']))
    {
        $com = new Comments();
        $com->title = $_POST['notTitulo'];
        $com->breadcrumb = $_POST['notTitulo'];
        $com->parent_id = 32;
        $com->slug = $_POST['notTitulo'];
        $com->status_id = 1;

        $com->idPageRel=$_POST['notId'];
        $com->nome=$_POST['tara_nome'];
        $com->mail=$_POST['tara_email'];
        $com->mensagem=$_POST['tara_comentario'];

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
