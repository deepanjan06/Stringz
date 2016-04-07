<?php

require './includes/connection.php';

$ID = (isset($_POST['hideProductID']) ? $_POST['hideProductID'] : null);

$name = (isset($_POST['name']) ? $_POST['name'] : null);

$price = (isset($_POST['price']) ? $_POST['price'] : null);

$description = (isset($_POST['description']) ? $_POST['description'] : null);

$imagename = (isset($_POST['imagename']) ? $_POST['imagename'] : null);

$category = (isset($_POST['category']) ? $_POST['category'] : null);

$quantity = (isset($_POST['quantity']) ? $_POST['quantity'] : null);

$shipping = (isset($_POST['shipping']) ? $_POST['shipping'] : null);

$query = "UPDATE product
SET
 name='$name', 
price='$price',
 description='$description',
 imagename='$imagename',
 category='$category',
quantity='$quantity',
shipping='$shipping'

WHERE id='$ID'";

$result = mysqli_query($connection, $query) or exit("Error in query: $query. " . mysqli_error());

include 'adminLoginPage.php';
?>
