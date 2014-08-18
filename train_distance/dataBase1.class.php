<?php
 /*this is where I access database*/
class DataBase{
    /*variables to be used for connecting, querying database, and Instantiating the Setter class*/
    public $myConnection;
    public $query;
    public $formData;
public function __construct($host, $username, $password, $dbname) { 
         
    /* I make the connection*/
		$this->myConnection = mysqli_connect($host, $username, $password, $dbname);

	}
	public function getTravelData(){
     /*Instantiating the Setter class to use the variable I made of $_POST data*/   
    $formData= new Setter();
    $formData->setLocation();
    $data=$formData->getLocation();

/*used my_sql_real_escape_string as it was the only alternative I knew
to having to select every Destination value
Had to use my_sql_real_escape_string instead of my_sql_escape_string
when viewing this on college computer*/
    $this->query = "SELECT * FROM dublinto WHERE Destination='".mysql_real_escape_string($data)."'";
    $result=$this->myConnection->query($this->query);
    echo "<table border='1'>
<tr>
<th>Destination</th>
<th>Distance</th>
<th>Time</th>
<th>Station</th>
</tr>";
    while($row = mysqli_fetch_array($result)) {
        echo "<tr>";
  echo "<td>" . $row['0'] . "</td>";
  echo "<td>" . $row['1'] . "</td>";
  echo "<td>" . $row['2'] . "</td>";
  echo "<td>" . $row['3'] . "</td>";
echo "</tr>";
  }
echo "</table>";
}
}
/*echoing data as html table but was wondering if this could have 
been done in a seperate class between this and the formHome.php file*/

?>