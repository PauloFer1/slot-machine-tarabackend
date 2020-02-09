<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of ExecPayment
 *
 * @author paulofernandes
 */
require SERVER_URL.'/tarambola/app/shoppingcart/paypal/vendor/autoload.php';

use PayPal\Api\ExecutePayment;
use PayPal\Api\Payment;
use PayPal\Api\PaymentExecution;
use PayPal\Rest\ApiContext;
use PayPal\Auth\OAuthTokenCredential;

class ExecPayment {
    
    private $paymentId;
    private $payment;
    private $execution;
    private $result;
    
    public function __construct()
    {
        $this->paymentId = $_SESSION['paymentId'];
        $this->payment = Payment::get($this->paymentId, $this->getApiContext());
    }
    public function execute()
    {
        $this->execution = new PaymentExecution();
	$this->execution->setPayerId($_GET['PayerID']);
	
	//Execute the payment
	// (See bootstrap.php for more on `ApiContext`)
	$this->result = $this->payment->execute($this->execution, $this->getApiContext());

    }
    public function trace()
    {
        echo "<html><body><pre>";
        var_dump($this->result);
    }
    public function getResultObj()
    {
        $obj = json_decode($this->result);
        return($obj);
    }
    private function getApiContext() {
	
	// ### Api context
	// Use an ApiContext object to authenticate 
	// API calls. The clientId and clientSecret for the 
	// OAuthTokenCredential class can be retrieved from 
	// developer.paypal.com

	$apiContext = new ApiContext(
		new OAuthTokenCredential(
			'AagPZRAFLYBueN4Wi2HE-Yu1u-Nyk9XyAWgCc044-rf7A0hySXP_pSMI-rHh',
			'EFOOwBCOzK7LX6pDwbWITXEwCyjiidu-itKjp4_UONw-tSl2APkCG65jzdmv'
		)
	);



	// #### SDK configuration
	
	// Comment this line out and uncomment the PP_CONFIG_PATH
	// 'define' block if you want to use static file 
	// based configuration

	$apiContext->setConfig(
		array(
			'mode' => 'sandbox',
			'http.ConnectionTimeOut' => 30,
			'log.LogEnabled' => true,
			'log.FileName' => SERVER_URL.'tarambola/app/shoppingcart/paypal/paypal.log',
			'log.LogLevel' => 'FINE'
		)
	);
	
	/*
	// Register the sdk_config.ini file in current directory
	// as the configuration source.
	if(!defined("PP_CONFIG_PATH")) {
		define("PP_CONFIG_PATH", __DIR__);
	}
	*/

	return $apiContext;
}

}

?>
