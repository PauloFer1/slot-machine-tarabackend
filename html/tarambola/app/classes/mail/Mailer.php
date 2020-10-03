<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';
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


    public function __construct($mailFrom,$name,$addr, $subject, $body)
    {
        $sender = EmailGetter::getSender();
        $this->mail = new PHPMailer();


        $this->mail->isSMTP();
        $this->mail->Host = $sender['campo'];  // specify main and backup server
//        $this->mail->Port = 587;
        $this->mail->Port = $sender['campo4'];
        $this->mail->CharSet = "UTF-8";
        $this->mail->SMTPSecure = "tls";
        $this->mail->SMTPAuth = true;     // turn on SMTP authentication
        $this->mail->Username = $sender['campo2'];  // SMTP username
        $this->mail->Password = $sender['campo3']; // SMTP password

        $this->mail->Subject = $subject;
        $this->mail->addAddress($addr);
        $this->mail->setFrom($mailFrom, $name);
        $this->mail->addReplyTo($mailFrom);
        $this->mail->msgHTML($body);
        $this->mail->AltBody = $body;

//        $this->mail->WordWrap = 50;                                 // set word wrap to 50 characters
        $this->mail->IsHTML(true);
        $this->mail->SMTPDebug = 4;
    }
    public function sendMail()
    {
        return($this->mail->Send());
    }
    public function getError()
    {
        return($this->mail->ErrorInfo);
    }
}
?>
