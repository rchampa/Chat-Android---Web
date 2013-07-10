<?php
 
// response json
$json = array();
 
/**
 * Adding a new contact
 */
if (isset($_POST["name"]) && isset($_POST["user_name"])) {
    $name = $_POST["name"];
    $user_name = $_POST["user_name"];
    
    include_once './db_functions.php';
    
    $db = new DB_Functions();
	
	if ($db->isUserRegistered($name) && $db->isUserRegistered($user_name)) {
     
		$res = $db->addContact($name, $user_name);
 
		if($res){
			$result = array("result" => "ok");
		}
		else{
			$result = array("result" => "error");
		}
	}
	else{
		$result = array("result" => "error");
	}
 
    echo json_encode($result);
} 
else {
    echo json_encode($result);
}
?>