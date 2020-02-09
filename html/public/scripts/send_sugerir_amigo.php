<?php
require_once '../../tarambola/app/classes/Mailer.php';
$body=
        '
            <table border="0" cellpadding="0" cellspacing="0" width="640"><tr>
<td align="center">
</td></tr></table>
<table border="0" cellpadding="0" cellspacing="0" width="640" style="font-family: Arial, Helvetica, sans-serif;font-size: 11px;color: #000000;background-color: #FFFFFF;margin-left: 2px;margin-top: 0px;margin-right: 2px;margin-bottom: 2px; border: 6px solid #39A8E0;">
  <tbody>
	  <tr>
	    <td>
	      <table align="left" border="0" cellpadding="0" cellspacing="0" width="640">
	        <tbody>
		        <tr>
                          <td width="10" ></td>
		          <td colspan="3" height="95"><font size="2" color="#000000"><a href="http://www.dentalfafe.com" style="text-decoration:none; border: none"><img src="http://dentalfafe.no-ip.info/public/themes/default/_img/logo.png" height="90" width="136" alt="Dentalfafe" style="border:none;"></a></font></td>
		        </tr>
                        <tr>
		          <td colspan="3" class="title" height="8"></td>
		        </tr>
		        <tr>
                          <td width="10" ></td>
		          <td colspan="3" height="42"><p style="font-size: 16px;font-weight: bold;color: #39A8E0;">Proposta de Visita!</p></td>
		        </tr>
		        <tr>
                            <td width="13" ></td>
                            <td colspan="1" class="title" height="3" background=""></td>
                            <td width="13" ></td>
		        </tr>
		        <tr>
		          <td width="13" ></td>
		          <td >
		          <table width="100%">
		          	<tbody>
		          		<tr>
		          			<td>

					             Recebeu uma sugestão de visita em dentalfafe.com de '.$_POST["name"].'

		          			</td>
		          		</tr>
		          	</tbody>
		          </table>
		          </td>
		          <td width="13"></td>
		        </tr>
		        <tr>
		          <td colspan="3" class="title" height="80" style="background-color:#F6F6F6">
                              <table style="padding:10px">
                                  <tbody>
                                      <tr>
                                          <td style="font-family: Arial, Helvetica, sans-serif;font-size: 11px;color: #939598;text-align: left;margin-left: 10px;" >
                                              <p style="font-weight:bold;">
                                                Dentalfafe
                                              </p>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td style="font-family: Arial, Helvetica, sans-serif;font-size: 10px;color: #939598;text-align: left;" width="270">
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                                Rua do Retiro - Fafe
                                              </p>
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                               4820 Fafe
                                              </p>
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                                Braga - Portugal
                                              </p>
                                           </td>
                                           <td style="font-family: Arial, Helvetica, sans-serif;font-size: 10px;color: #939598;text-align: left;" width="270">
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                                Tel: +351 253 599 939 
                                              </p>
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                                Email: geral@dental.com
                                              </p>
                                              <p style="margin-bottom:2px; margin-top:2px;">
                                                Web: www.dentalfafe.com
                                              </p>
                                          </td>
                                      </tr>
                                  </tbody>
                              </table>
                          </td>
		        </tr>

		    </tbody>
	      </table>
	    </td>
	  </tr>
          <tr>
                        </tr>
  </tbody>
</table>
            ';
$mailer = new Mailer($_POST['email'],"Proposta de Visita de dentalfafe.com por " . $_POST['name'] . "", $_POST['email'],"Proposta de Visita de dentalfafe.com por " . $_POST['name'] . "", $body );

if($mailer->sendMail())
    echo('<div style="background-color:#EBFCDE; width:190px; height:40px; text-align:center; padding-top:15px;margin-top:20px;margin-left:20px;"><h4>Sugestão Enviada!</h4></div>');
else
    echo('<div style="background-color:#FF6C22; width:190px; height:40px; text-align:center; padding:10px;margin-top:20px;margin-left:20px;"><h4>Erro ao enviar sugestão!</h4></div>');
?>
