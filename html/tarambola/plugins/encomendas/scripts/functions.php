<?php

include_once("../../../../config.php");
require_once('../../../Framework.php');
require_once(SERVER_URL . 'tarambola/app/shoppingcart/Encomendas.php');

$url = explode("/",($_SERVER["REQUEST_URI"])); 

 $__tarambola_CONN__ = new PDO(DB_DSN, DB_USER, DB_PASS);

    if ($__tarambola_CONN__->getAttribute(PDO::ATTR_DRIVER_NAME) == 'mysql')
        $__tarambola_CONN__->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, true);

    Record::connection($__tarambola_CONN__);
    Record::getConnection()->exec("set names 'utf8'");


 if($url[sizeof($url)-1]=="update-state") //******************** SATE
    {
        $result= Encomendas::updateState($_POST['enc_id'], $_POST['state']);

        if($result==1)
        {
            Flash::set('success', 'Estado da encomenda alterado com sucesso!');
        }
        else
        {
            Flash::set('error', 'Erro ao alterar estado da encomenda!');
        }
        echo($result);
    }
    else if($url[sizeof($url)-1]=="add-atributo") //******************** ADD ATRIBUTO
    {
        $result= Encomendas::insertAtributo($_POST['descricao']);

        if($result==1)
        {
            Flash::set('success', 'Descrição inserida com sucesso!');
        }
        else
        {
            Flash::set('error', 'Erro ao inserir descrição!');
        }
        echo($result);
    }
    else if($url[sizeof($url)-1]=="add-atributo-valor") //******************** ADD ATRIBUTO
    {
        $result= Encomendas::insertAtributoValor($_POST['atributo'], $_POST['descricao']);

        if($result==1)
        {
            Flash::set('success', 'Valor inserid com sucesso!');
        }
        else
        {
            Flash::set('error', 'Erro ao inserir valor!');
        }
        echo($result);
    }

?>
