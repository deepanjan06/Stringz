<?php
require '../includes/init.php';
require '../includes/functions.php';
//gather data
if(isset($_POST['submit'])) {
	$user = (isset($_POST['username']) ? $_POST['username'] : null);
	$pass = (isset($_POST['password']) ? $_POST['password'] : null);
	$user = clean_string($user);
	$pass = clean_string($pass);
	
	$pass=	md5($pass);
	$error_check = array();
	if (empty($user)) {
		$error_check[] = 'Please enter a username';
	}
	if (empty($pass)) {
		$error_check[] = 'Please enter a password';
	}
			
	if (empty($error_check)) {
		
		
		
		//run query
		$query = "SELECT * FROM users WHERE email='$user' AND password='$pass' ";
		//echo $query;
		//exit();
		$result = mysqli_query($connection, $query);
		//response

		
		if ($row = mysqli_fetch_assoc($result)) {
			$_SESSION['user'] = $user;
			header('location:../index.php');
		echo "<h2>You have successfully logged in as </h2>";
		echo $user;
		}

		else {
			$error_check[] = 'Your details were not recognised';
			$_SESSION['errors']=$error_check;
			header('location:../index.php');
		}
	} else {	
		$_SESSION['errors']=$error_check;
		header('location:../index.php');
	}
}
?>