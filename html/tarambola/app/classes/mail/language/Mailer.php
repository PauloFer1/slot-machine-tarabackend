<?php
//require_once 'class.phpmailer.php';
require_once("class.smtp.php");
require_once(APP_PATH."class.pop3.php");     
require_once(APP_PATH."class.phpmailer.php");
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


        public function __construct($mail,$name,$addr, $subject, $body)
        {
            $this->mail = new PHPMailer();

         /*   $this->mail->IsSMTP();
            $this->mail->CharSet = 'UTF-8';
            $this->mail->Host = "cpf-iron.com"; 
            $this->mail->SMTPAuth = true;
            $this->mail->Username = "sender@cpf-iron.com";
            $this->mail->Password = "cpf-iron2014#";
            $this->mail->From = $mail;
            $this->mail->FromName = $name;
            $this->mail->AddAddress($addr);
            $this->mail->AddCC('nunocastro@tarambola.pt');
            $this->mail->AddCC('paulo.r.r.fernandes@gmail.com');
            $this->mail->WordWrap = 50;
            $this->mail->IsHTML(true);
            $this->mail->Subject = $subject;
            $this->mail->Body = $body;*/
            
            
            $mail->IsSMTP();                                      // set mailer to use SMTP
            $mail->Host = "smtp.gmail.com";  // specify main and backup server
            $mail->Port = 465;
            $mail->CharSet = "UTF-8";
            $mail->SMTPSecure = "ssl";
            $mail->SMTPAuth = true;     // turn on SMTP authentication
            $mail->Username = "qriaideias.tarambola@gmail.com";  // SMTP username
            $mail->Password = "taram80la#"; // SMTP password

            $this->mail->From = $mail;
            $this->mail->FromName = $name;
            $this->mail->Subject = $subject;
            $this->mail->Body = $body;
            $mail->AddAddress("mslb2015.sec@fe.up.pt", "mslb2015");
            $mail->AddAddress("paulo.r.r.fernandes@gmail.com", "Paulo Fernandes");
            $mail->WordWrap = 50;                                 // set word wrap to 50 characters
            $mail->IsHTML(true);
        }
        public function sendMail()
        {
            return($this->mail->Send());
        }
}
?>
