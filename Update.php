<?php
require 'includes/connection.php';

$ID = (isset($_POST['hideProductID']) ? $_POST['hideProductID'] : null);

$FirstName = (isset($_POST['FirstName']) ? $_POST['FirstName'] : null);

$LastName = (isset($_POST['LastName']) ? $_POST['LastName'] : null);

$Email = (isset($_POST['Email']) ? $_POST['Email'] : null);

$Mobile = (isset($_POST['Mobile']) ? $_POST['Mobile'] : null);

$HouseNumber = (isset($_POST['HouseNumber']) ? $_POST['HouseNumber'] : null);

$StreetName = (isset($_POST['StreetName']) ? $_POST['StreetName'] : null);

$Postcode = (isset($_POST['Postcode']) ? $_POST['Postcode'] : null);

$query = "UPDATE users
SET
 firstname='$FirstName', 
lastname='$LastName',
 email='$Email',
HouseNumber='$HouseNumber',
StreetName='$StreetName',
MobileNumber='$Mobile',
 Postcode='$Postcode'
WHERE userID='$ID'";

$result = mysqli_query($connection, $query) or exit("Error in query: $query. " . mysqli_error());
$_SESSION['message']='Your Details has been successfully changed';

header('Location: index.php');



	
		?> 
