<?php
 
// response json
$json = array();
 
/**
 * Registering a user device
 * Store reg id in users table
 */
if (isset($_POST["name"]) && isset($_POST["message"])) {
    $name = $_POST["name"];
    $message = $_POST["message"];
	
	$message_data = array("price" => $message);
    
    include_once './db_functions.php';
    include_once './GCM.php';
 
    $db = new DB_Functions();
    $gcm = new GCM();
 
    $registros = $db->getContacts($name);
	
	$registatoin_ids = array();
	
	while($reg=mysql_fetch_array($registros)){ 
	  echo $reg['contacto']; 
	  echo '<br>';
	  
	  $reg_id = $db->getID($reg['contacto']);
	  $id = mysql_fetch_array($reg_id);
	  //echo $id['gcm_regid'];
	  
	  array_push($registatoin_ids, $id['gcm_regid']);
	  
	  echo '<br>';
	  echo '<br>';
	} 
	$result = $gcm->send_notification($registatoin_ids, $message_data);
	
	echo $result;

} else {
    // user details missing
}
?>