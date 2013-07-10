<?php
 
class DB_Functions {
 
    private $db;
 
    //put your code here
    // constructor
    function __construct() {
        include_once './db_connect.php';
        // connecting to database
        $this->db = new DB_Connect();
        $this->db->connect();
    }
 
    // destructor
    function __destruct() {
         
    }
	
	public function isUserRegistered($user_name){
		// search if the user is already added in gcm_users
		$result = mysql_query("select * from gcm_users where name='$user_name'");
		
		if (mysql_num_rows($result) > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public function addContact($user_name, $name_user_contact){
	             
		$result = mysql_query("insert into contactos(usuario, contacto, added_at) values ('$user_name', '$name_user_contact', NOW())");
			
		return $result;
	
	}
	
	
 
    /**
     * Storing new user
     * returns user details
     */
    public function storeUser($name, $email, $gcm_regid) {
        // insert user into database
        $result = mysql_query("INSERT INTO gcm_users(name, email, gcm_regid, created_at) VALUES('$name', '$email', '$gcm_regid', NOW())");
        // check for successful store
        if ($result) {
            // get user details
            $id = mysql_insert_id(); // last inserted id
            $result = mysql_query("SELECT * FROM gcm_users WHERE id = $id") or die(mysql_error());
            // return user details
            if (mysql_num_rows($result) > 0) {
                return mysql_fetch_array($result);
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
 
    /**
     * Getting all users
     */
    public function getAllUsers() {
        $result = mysql_query("select * FROM gcm_users");
        return $result;
    }
 
	public function getContacts($name) {
        $result = mysql_query("select contacto from contactos where usuario = '$name'");
        return $result;
    }
	
	public function getID($name){
		$result = mysql_query("select gcm_regid from gcm_users where name = '$name'");
        return $result;
	}
}
 
?>