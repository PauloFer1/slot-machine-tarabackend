<?php

class User
{
 private  $userId;
 private $nome;
 private $username;
 private $password;
 private $morada;
 private $cidade;
 private $cod_postal;
 private $telefone;
 private $email;
 private $registo;
 private $nif;
 private $obs;
 private $connection;

     public function __construct()
    {
    }
    public function getUsername()
    {
        return $this->username;
    }
    public function setUser($id)
    {
        $user=$this->getUserById($id);
        $this->userId = $user->id;
        $this->nome = $user->nome;
        $this->username = $user->username;
        $this->password = $user->password;
        $this->morada = $user->morada;
        $this->telefone = $user->telefone;
        $this->cod_postal = $user->cod_postal;
        $this->email = $user->email;
        $this->registo = $user->registo;
        $this->cidade = $user->cidade;
        $this->nif = $user->nif;
        $this->obs = $user->observacoes;
    }
    public function getUserById($id)
    {
            global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users WHERE id=".$id;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            $object = $stmt->fetchObject();
        }
        return($object);
    }
    public function getUserByMailPass($mail, $pass)
    {
        global $__tarambola_CONN__;

        $sql="SELECT COUNT(id) From ".TABLE_PREFIX."front_users WHERE email='".$mail."' AND password ='".$pass."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            $object = $stmt->fetchObject();
        }
        return($object);
    }
    public function getUserByMail($mail)
    {
        require_once(SERVER_URL."tarambola/app/classes/Page.php");
        global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users WHERE email='".$mail."'";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            if($object = $stmt->fetchObject())
            {
                return($object);
            }
            else
            {
                return(null);
            }
        }
        return(null);
    }
    public function checkBrute($user_id)
    {
         global $__tarambola_CONN__;
         
         $now = time();
         $valid_attempts = $now - (2 * 60 * 60);
         
         $sql="SELECT id From ".TABLE_PREFIX."front_login_attemps WHERE user_id='".$user_id."' AND time > '".$valid_attempts."'";
         $users = array();
         
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();
            
           
            while ($object = $stmt->fetchObject())
            {
                $users[] = $object;
            }
            if(sizeof($users) > 5)
            {
                return(true);
            }
            else
                return(false);
        }
        return(true);
    }
    public function hasUsername($username)
    {
         global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users WHERE username='".$username."'";
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();
        }
 
        if( $stmt->fetchObject())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public function hasEmail($email)
    {
         global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users WHERE email='".$email."'";
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();
        }
 
        if( $stmt->fetchObject())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public function getUsers()
    {
            global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $users[] = $object;
            }
        }
        return($users);
    }
     public function getUsersLikeName($username)
    {
            global $__tarambola_CONN__;

        $sql="SELECT * From ".TABLE_PREFIX."front_users WHERE username LIKE '".$username."' OR nome LIKE '".$username."'";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $users[] = $object;
            }
        }
        return($users);
    }
    public function confirmUser($userId)
    {
        global $__tarambola_CONN__;

        $sql="UPDATE tara_front_users SET registo = 1 WHERE id = ".$userId;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

        }
        return($stmt);
    }
    public function updateUser($nome, $username, $password, $morada, $cidade, $cod_postal, $telefone, $email, $nif, $obs="")
    {
        global $__tarambola_CONN__;
        

        $sql="UPDATE tara_front_users SET  nome='".$nome."', username='".$username."', password='".$password."', morada='".$morada."', cidade='".$cidade."', cod_postal='".$cod_postal."', telefone='".$telefone."', email='".$email."', nif='".$nif."'  WHERE id = ".$this->userId;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=true;
           else
            $flag=false;
        }
        return($flag);
    }
    public static function getCategoriasDocs($order="")
    {
        global $__tarambola_CONN__;
        $cats=null;

        $sql="SELECT * From ".TABLE_PREFIX."documentos_categorias ".$order;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {
                $cats[] = $object;
            }
        }
        return($cats);    
    }
     public static function getCategoriasDocsByUser($id, $order="")
    {
        global $__tarambola_CONN__;
        $cats=null;

        $sql="SELECT cat.id AS id, cat.nome AS nome From ".TABLE_PREFIX."documentos_categorias AS cat
              INNER JOIN tara_documentos_categorias_assoc AS catass ON catass.categoria_id = cat.id
              INNER JOIN tara_documentos AS doc ON doc.id = catass.documento_id
              INNER JOIN tara_documentos_front_users AS docass ON docass.documentos_id = doc.id
              WHERE docass.front_users_id = '".$id."' ".$order;
        

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {
                $cats[] = $object;
            }
        }
        return($cats);    
    }
    public static function getGeralDocs()
    {
        global $__tarambola_CONN__;
        $docs=array();

        $sql="SELECT d.id, d.nome, d.caminho, d.descricao, cat.id AS categoria_id, cat.nome AS categoria
            FROM ".TABLE_PREFIX."documentos AS d 
            INNER JOIN ".TABLE_PREFIX."documentos_categorias_assoc AS catass ON catass.documento_id = d.id
            INNER JOIN ".TABLE_PREFIX."documentos_categorias AS cat ON catass.categoria_id = cat.id
            WHERE cat.nome = 'Geral' ";
        
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $docs[] = $object;
            }
        }
        return($docs); 
    }
     public static function getDocsByUser($id, $order="")
    {
        global $__tarambola_CONN__;
        $docs=array();

        $sql="SELECT d.id, d.nome, d.caminho, d.descricao, cat.id AS categoria_id, cat.nome AS categoria
            FROM ".TABLE_PREFIX."documentos AS d 
            INNER JOIN ".TABLE_PREFIX."documentos_front_users AS ass ON d.id=ass.documentos_id
            INNER JOIN ".TABLE_PREFIX."documentos_categorias_assoc AS catass ON catass.documento_id = d.id
            INNER JOIN ".TABLE_PREFIX."documentos_categorias AS cat ON catass.categoria_id = cat.id
            WHERE ass.front_users_id = '".$id."' ".$order;
        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
            $stmt->execute();

            while ($object = $stmt->fetchObject())
            {

                $docs[] = $object;
            }
        }
        return($docs);  
    }
    public function getUserByLicitacao($licId)
    {

    }
    public function insertUser($nome, $username, $password, $morada, $cidade, $cod_postal, $telefone, $email, $nif, $obs="")
    {
        global $__tarambola_CONN__;

        $sql="INSERT INTO ".TABLE_PREFIX."front_users ( nome, username, password, morada, cidade, cod_postal, telefone, email, nif, observacoes)
                VALUES ('".$nome."', '".$username."', '".$password."', '".$morada."', '".$cidade."', '".$cod_postal."', '".$telefone."', '".$email."', '".$nif."', '".$obs."')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public static function attempFailed($userId)
    {
        global $__tarambola_CONN__;
        $now = time();
        
         $sql="INSERT INTO ".TABLE_PREFIX."front_login_attemps (user_id, time)
                VALUES ('".$userId."', '".$now."')";

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {

            if($stmt->execute())
                $flag=1;
            else
                $flag=0;

        }
        return($flag);
    }
    public function deleteUserById($userId)
    {
            global $__tarambola_CONN__;


        $sql="DELETE FROM ".TABLE_PREFIX."front_users WHERE id = ".$userId;

        if ($stmt = $__tarambola_CONN__->prepare($sql))
        {
           if( $stmt->execute())
            $flag=true;
           else
            $flag=false;
        }
        return($flag);
    }
    public function setConnection($con)
    {
        $this->connection = $con;
    }

}
?>
