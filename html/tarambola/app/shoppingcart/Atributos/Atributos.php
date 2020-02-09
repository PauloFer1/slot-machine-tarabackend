<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Atributos
 *
 * @author paulofernandes
 */
require_once(SERVER_URL."tarambola/app/shoppingcart/Atributos/AtributosQtd.php");

class Atributos {
    public $listaAtributosQtd; //lista de QTD por lista de valoresatributos [{qtd, [{atributo, valor}]}];
    
    public function __construct() {
        $this->listaAtributosQtd = array();
    }
    public function addLista($lista)
    {
        array_push($this->listaAtributosQtd, $lista);
    }
    
    public function decodeJSon($str)
    {
        $obj = json_decode($str);
        for($i=0; $i<sizeof($obj->atributos); $i++)
        {
            $atributosQtd = new AtributosQtd($obj->atributos[$i]->qtd);
            for($k=0; $k<sizeof($obj->atributos[$i]->lista); $k++)
            {
                $valoresAtributos = new ValoresAtributos($obj->atributos[$i]->lista[$k]->atributo, $obj->atributos[$i]->lista[$k]->valor);
                $atributosQtd->addLista($valoresAtributos);
            }
            $this->addLista($atributosQtd);
        }
        
    }
    
    public function toJSonString()
    {
        $lista='[';
        for($i=0; $i<sizeof($this->listaAtributosQtd); $i++)
        {
            if($i>0)
                $lista.=',';
            $lista.=$this->listaAtributosQtd[$i]->toJSonString();
        }
        $lista.=']';
        $str='{"atributos":'.$lista.'}';
        
        return($str);
    }
    public function getQtdByAtributos($atributos)
    {
        for($i=0; $i<sizeof($this->listaAtributosQtd); $i++)
        {
            $qtd = $this->listaAtributosQtd[$i]->getQtd($atributos);
            if($qtd>-1)
                return($qtd);
        }
        return(0);
    }
    public function outStock($atributos, $qtd)
    {
        for($i=0; $i<sizeof($this->listaAtributosQtd); $i++)
        {
            $qtdTemp = $this->listaAtributosQtd[$i]->getQtd($atributos);
            if($qtdtemp>-1){
                if($qtdTemp>=$qtd){
                    $this->listaAtributosQtd[$i]->$qtd-=$qtd;
                    return(1);
                }
            }             
        }
        return(0);
    }
}

?>
