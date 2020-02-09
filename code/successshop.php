<h2>Pagamento efectuado com sucesso!</h2>
<?php  
require SERVER_URL.'tarambola/app/shoppingcart/paypal/ExecPayment.php';

$exec = new ExecPayment();
$exec->execute();
$exec->trace();
	
