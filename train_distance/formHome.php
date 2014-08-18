<?php
/*Here is the main php file where our form links to*/
include("dataBase1.class.php");
include("Setter.class.php");


$formHome = new DataBase('localhost','root','','trainfromdublin');
$journey=$formHome->getTravelData();
echo $journey;
?>