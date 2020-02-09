<?php

class Encomendas
{

    public function __construct() {
        
    }
    
    //*********************** DB QUERYS *********************//
    
    //************************* GETS ************************//
    public static function getEncomendas()
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT enc.*, users.nome  FROM tara_encomendas AS enc
              INNER JOIN tara_cart AS cart ON cart.id = enc.cart_id
              INNER JOIN tara_front_users AS users ON users.id = cart.user_id
              WHERE estado=1";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
     public static function getAtributos()
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT * FROM tara_encomendas_atributos";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
      public static function getAtributosValoresById($id)
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT *  FROM tara_encomendas_atributos_valores
              WHERE atributos_id='".$id."'";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
      public static function getAtributoById($id)
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT *  FROM tara_encomendas_atributos
              WHERE id='".$id."'";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           $stmt->execute();

           $object = $stmt->fetchObject();
        }
        return($object);
    }
     public static function getEncomendasEnvio()
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT enc.*, users.nome  FROM tara_encomendas AS enc
              INNER JOIN tara_cart AS cart ON cart.id = enc.cart_id
              INNER JOIN tara_front_users AS users ON users.id = cart.user_id
              WHERE estado=2";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
    public static function getEncomendasArquivo()
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT enc.*, users.nome  FROM tara_encomendas AS enc
              INNER JOIN tara_cart AS cart ON cart.id = enc.cart_id
              INNER JOIN tara_front_users AS users ON users.id = cart.user_id
              WHERE estado=3";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
    public static function getProdutosByEncomenda($id)
    {
        $prod = array();
        global $__tarambola_CONN__;
        $sql="SELECT p.*, vat.value AS vat_val, vat.description AS vat_desc FROM tara_encomenda_produto AS p
              INNER JOIN tara_encomenda_produto_assoc AS assoc ON assoc.produto_id = p.id
              INNER JOIN tara_encomendas AS e ON e.id = assoc.encomenda_id
              INNER JOIN tara_encomendas_vat AS vat ON vat.id = p.vat_id
              WHERE e.id = '".$id."'";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $prod[] = $object;
            }
        }
        return($prod); 
    }
    public static function getAtributosByProduto($id)
    {
        $attr = array();
        global $__tarambola_CONN__;
        $sql="SELECT * FROM ".TABLE_PREFIX."encomendas_atributos AS a
              INNER JOIN ".TABLE_PREFIX."encomendas_atributos_produtos as assoc ON assoc.atributo_id = a.id
              WHERE assoc.produto_id='".$id."'";
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $attr[] = $object;
            }
        }
        return($attr);
    }
    public static function getEncomendasByUser($id)
    {
        $enc = array();
        global $__tarambola_CONN__;
        $sql="SELECT * FROM ".TABLE_PREFIX."encomendas WHERE user_id='".$id."'";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $enc[] = $object;
            }
        }
        return($enc);
    }
    public static function getEncomendaById($id)
    {
         global $__tarambola_CONN__;
         
         $sql="SELECT enc.*, est.id AS estado_id, est.descricao AS estado_desc FROM tara_encomendas AS enc
                INNER JOIN tara_encomendas_estado AS est ON est.id = enc.estado
                WHERE enc.id='".$id."'";
         
         if ($stmt = $__tarambola_CONN__->prepare($sql))
         {
            $stmt->execute();

            $object = $stmt->fetchObject();
         }
         return($object);
    }
    public static function getUserByEncomenda($id)
    {
       global $__tarambola_CONN__;
         
         $sql="SELECT users.* FROM tara_front_users AS users
            INNER JOIN tara_cart AS cart ON cart.id = users.id
            INNER JOIN tara_encomendas AS enc ON enc.cart_id = cart.id
            WHERE enc.id = '".$id."'";
         
         if ($stmt = $__tarambola_CONN__->prepare($sql))
         {
            $stmt->execute();

            $object = $stmt->fetchObject();
         }
         return($object);
    }
    public static function getEstados()
    {
         global $__tarambola_CONN__;
         
         $est = array();
         $sql="SELECT * FROM tara_encomendas_estado";
         
         if ($stmt = $__tarambola_CONN__->prepare($sql))
         {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $est[] = $object;
            }
         }
         return($est);
    }
    //************************** INSERT **********************//
    public static function insertEncomenda($userId, $reference, $invoiceAddress, $invoicePostal, $invoiceCountry, $invoiceCity, $shipAddress, $shipPostal, $shipCountry, $shipCity, $valueShipping, $discount="", $clientDiscount="")
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."encomendas ( reference, discount, user_id, client_discount, value_shipping, invoice_adress, invoice_postal, invoice_country, invoice_city, shipping_address, shipping_postal, shipping_country, shipping_city)
                VALUES ('".$reference."', '".$discount."', '".$userId."', '".$clientDiscount."', '".$valueShipping."', '".$invoiceAddress."', '".$invoicePostal."', '".$invoiceCountry."', '".$invoiceCity."', '".$shipAddress."', '".$shipPostal."', '".$shipCountry."', '".$shipCity."' )";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public static function insertProduct($pageId, $title, $reference, $thumbPath, $qtd, $moduloId, $vatId, $valueUnity, $valueTotal, $discountUnity, $discountTotal)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."encomenda_produto ( page_id, qtd, value_unity, value_total, discount_unity, discount_total, modulo_id, thumb_path, title, reference, vat_id)
                VALUES ('".$pageId."', '".$qtd."', '".$valueUnity."', '".$valueTotal."', '".$discountUnity."', '".$discountTotal."', '".$moduloId."', '".$thumbPath."', '".$title."', '".$reference."', '".$vatId."' )";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public function assocProdEnc($prodId, $encId)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."encomenda_produto_assoc ( encomenda_id, produto_id)
                VALUES ('".$prodId."', '".$encId."' )";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public static function insertAtributo($descricao)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO tara_encomendas_atributos (description)
                VALUES ('".$descricao."')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public static function insertAtributoValor($idAttr, $descricao)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO tara_encomendas_atributos_valores (atributos_id, descricao)
                VALUES ('".$idAttr."','".$descricao."')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    //************************** UPDATE **********************//
    
    public static function updateState($id, $state)
    {
       global $__tarambola_CONN__; 
       
       $sql = "UPDATE tara_encomendas SET estado='".$state."' WHERE id = '".$id."'";
       $flag=0;
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=1;
           else
            $flag=0;
        }
        return($flag);
    }
    public static function updateQtd($atributos, $idPage, $partName="atributos")
    {
       global $__tarambola_CONN__; 
       
       $sql = "UPDATE tara_page_part SET content='".$atributos->toJSonString()."', content_html='".$atributos->toJSonString()."' WHERE page_id = '".$idPage."' AND name = '".$partName."'";
       $flag=0;
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=1;
           else
            $flag=0;
        }
        return($flag);
    }
}



?>
