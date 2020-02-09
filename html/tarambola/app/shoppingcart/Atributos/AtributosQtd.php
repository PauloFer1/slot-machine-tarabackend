<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of AtributosQtd
 *
 * @author paulofernandes
 */
require_once(SERVER_URL."tarambola/app/shoppingcart/Atributos/ValoresAtributos.php");

class AtributosQtd {
    public $qtd;
    public $listaValoresAtributos; // lista de ValoresAtributos {id, valor}
    
    public function __construct($qtd) {
        $this->listaValoresAtributos = array();
        $this->qtd=$qtd;
    }
    public function addLista($lista)
    {
        array_push($this->listaValoresAtributos, $lista);
    }
    public function toJSonString(){
        $lista='[';
        for($i=0; $i<sizeof($this->listaValoresAtributos); $i++)
        {
            if($i>0)
                $lista.=',';
            $lista.=$this->listaValoresAtributos[$i]->toJSonString();
        }
        $lista.=']';
        $str='{"qtd":'.$this->qtd.', "lista":'.$lista.'}';
        
        return($str);
    }
    public function getQtd($atributos)
    {
        $size = sizeof($this->listaValoresAtributos)+1;
        $nr=0;
        for($i=0; $i<$size-1; $i++)
        {
            for($k=0; $k<sizeof($atributos); $k++)
            {
                if($this->listaValoresAtributos[$i]->id == $atributos[$k])
                    $nr++;
            }
            if($nr==$size)
                return($this->qtd);
        }
       return(-1);
    }
    public function existsAttr($id, $atributos)
    {
        for($i=0; $i<sizeof($atributos); $i++)
        {
            if($id==$atributos[$i])
                return(true);
        }
        return false;
    }
}

?>
