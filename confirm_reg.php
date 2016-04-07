<?php
require './includes/init.php';
?>
<!DOCTYPE html>
<html>
 <head> 
      <title>Registration</title> 
      <meta charset="utf-8" /> 
      <?php include 'includes/css_link.php'; ?>
   </head> 
	<body>
		<div id="pagewrap">

			<div class =miniwrapper>

				<?php include 'includes/header.php'
				?>

				<?php include 'includes/navigation.php'
				?>

<?php 
$firstname = (isset($_GET['FirstName']) ? $_GET['Firstname'] : null);
		
$lastname = (isset($_GET['LastName']) ? $_GET['LastName'] : null);
		
$email = (isset($_GET['Email']) ? $_GET['Email'] : null);
		

$mobile = (isset($_GET['Mobile']) ? $_GET['Mobile'] : null);
		 
$housenumber = (isset($_GET['HouseNumber']) ? $_GET['HouseNumber'] : null);
	
$streetname = (isset($_GET['StreetName']) ? $_GET['StreetName'] : null);
	
$postcode = (isset($_GET['Postcode']) ? $_GET['postcode'] : null);
	

echo "<h3>You've successfully signed up on Stringz. <br> <br> Please use your email id and password to login.<br> <br>
Thank you.
</h3>";
echo $firstname .' '.$lastname .'<br>'.$email.'<br>'. $mobile.' <br>'. $housenumber.' '.$streetname.' <br>'.$postcode ; 
?>
				</section>

				<div id="supersized"></div>

				<?php include'includes/footer.php'
				?>
			</div>
		</div>

		<?php include 'includes/js_link.php';
		?>
	</body>
</html>