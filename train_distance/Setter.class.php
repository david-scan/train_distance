<?php
/*this class is used to set $_POST data 
as variables for use in Database class*/
class Setter{
	
public $location;
public function setLocation(){
$this->location=$_POST["destination"];
}
public function getLocation(){
	return $this->location;
	}
}

?>