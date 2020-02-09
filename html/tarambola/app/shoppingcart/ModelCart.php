<?php

class ModelCart
{
    public $id;
    public $userId;
    public $session;
    public $qtd;
    public $value;
    
    public function __construct() {
        
    }
    
    public function create($userId, $session)
    {
        $this->session = $session;
        $this->userId = $userId;
        
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."cart ( session, user_id)
                VALUES ('".$session."', '".$userId."')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
            {
                $this->id = $__tarambola_CONN__->lastInsertId ();
                $flag=1;
            }
            else
                $flag=0;

        }
        return($flag);
    }
    public function hasCart($userId, $session)
    {
        global $__tarambola_CONN__;

        $sql="SELECT COUNT(*) AS count From tara_cart WHERE user_id='".$userId."' AND session = '".$session."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            $object = $stmt->fetchObject();
        }
        if($object->count==0)
        {
            $this->create ($userId, $session);
            return false;
        }
        else
        {
            $this->session = $session;
            $this->userId = $userId;
            return(true);
        }
    }
    public function createWithoutUser($session)
    {
        $this->session = $session;
        $this->userId = 0;
        
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."cart ( session, user_id)
                VALUES ('".$session."', '0')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
            {
                $this->id = $__tarambola_CONN__->lastInsertId ();
                $flag=1;
            }
            else
                $flag=0;

        }
        return($flag);
    }
    public function addUserToCart($userId)
    {
        global $__tarambola_CONN__;
        

        $sql="UPDATE tara_cart SET user_id='".$userId."' WHERE session='".$this->session."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=true;
           else
            $flag=false;
        }
        return($flag);
    }
    public function addItem($pageId, $title, $reference, $thumbPath, $qtd, $moduloId, $vatId, $valueUnity, $valueTotal, $discountUnity, $discountTotal)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."encomenda_produto ( page_id, qtd, value_unity, value_total, discount_unity, discount_total, modulo_id, thumb_path, title, reference, vat_id)
                VALUES ('".$pageId."', '".$qtd."', '".$valueUnity."', '".$valueTotal."', '".$discountUnity."', '".$discountTotal."', '".$moduloId."', '".$thumbPath."', '".$title."', '".$reference."', '".$vatId."' )";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
            {
                if($this->assocItemCart($__tarambola_CONN__->lastInsertId ()))
                    $flag=1;
                else
                    $flag=0;
            }
            else
                $flag=0;

        }
        return($flag);
    }
    public function assocItemCart($produto_id)
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO tara_cart_produto (produto_id, cart_id) VALUES ('".$produto_id."', '".$this->id."')";
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            if($stmt->execute())
            {
                $flag=1;
            }
            else
                $flag=0;

        }
        return($flag);
    }
    public function getItens()
    {
        global $__tarambola_CONN__;

        $sql="SELECT * FROM tara_encomenda_produto AS p
                INNER JOIN tara_cart_produto AS cp ON cp.produto_id=p.id
                INNER JOIN tara_cart AS c ON c.id = cp.cart_id
                WHERE c.session = '".$this->session."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $itens[] = $object;
            }
        }
        return($itens);
    }
    public function deleteCartBySession()
    {
        
    }
    public function removeItem($item)
    {
        global $__tarambola_CONN__;

        $sql="DELETE FROM tara_cart_produto WHERE produto_id = ".$item;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
           {
               if($this->removeItemAux($item))
                    $flag=true;
               else
                   $flag=false;
           }
           else
            $flag=false;
        }
        return($flag);
    }
    public function removeItemAux($item)
    {
        global $__tarambola_CONN__;

        $sql="DELETE FROM tara_encomenda_produto WHERE id = ".$item;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=true;
           else
            $flag=false;
        }
        return($flag); 
    }
    public function addQtd($qtd, $id)
    {
         global $__tarambola_CONN__;

        $sql="UPDATE tara_encomenda_produto SET qtd = qtd+".$qtd." WHERE id = ".$id;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

        }
        return($stmt);
    }
    public function removeQtd($qtd, $id)
    {
         global $__tarambola_CONN__;

        $sql="SELECT qtd FROM tara_encomenda_produto WHERE id = '".$id."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           $stmt->execute();

            if($object = $stmt->fetchObject())
            {
                if($object->qtd>=$qtd)
                {
                    $this->removeQtdAux($qtd, $id);
                    return(1);
                }
            }
            else
            {
                return(0);
            }

        }
        return(0);
    }
    public function removeQtdAux($qtd, $id)
    {
         global $__tarambola_CONN__;

        $sql="UPDATE tara_encomenda_produto SET qtd = qtd-".$qtd." WHERE id = ".$id;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

        }
        return($stmt); 
    }
}

?>
