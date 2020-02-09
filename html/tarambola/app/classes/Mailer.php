<?php
require_once 'class.phpmailer.php';
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Mailer
 *
 * @author paulofernandes
 */
class Mailer {
    
        public $mail;


        public function __construct($mail,$name,$addr, $subject, $body, $host="cpf-iron.com", $username="sender@cpf-iron.com", $password="cpf-iron2014#")
        {
            $this->mail = new PHPMailer();

            $this->mail->IsSMTP();
            $this->mail->CharSet = 'UTF-8';
            $this->mail->Host = $host; //smtp.gmail.com
            $this->mail->Username = $username;
            $this->mail->Password = $password;
            $this->mail->From = $mail;
            $this->mail->FromName = $name;
            $this->mail->SMTPAuth = true;
            $this->mail->AddAddress($addr);
            $this->mail->WordWrap = 50;
            $this->mail->IsHTML(true);
            $this->mail->Subject = $subject;
            $this->mail->Body = $body;
        }
        public function sendMail()
        {
            $flag = $this->mail->Send();
            var_dump($this->mail->ErrorInfo);
            return($flag);
        }
}
?>
