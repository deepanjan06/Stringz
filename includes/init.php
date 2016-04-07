<?php
//initilise
/*error_reporting(0);
session_start();
$connection = mysqli_connect($hostname, $username, $pword, $databaseName) or die("Unable to connect to database!");
*/
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
  $hostname = "localhost"; 
  $username = "c3442857"; 
  $pword = "Babai217joy"; 
  $databaseName = "c3442857"; 

  // (1) Open the database connection  - exit with error message otherwise 

 $connection = mysqli_connect($hostname, $username, $pword, $databaseName) or die("Unable");



?>