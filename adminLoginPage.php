<?php
require './includes/init.php';
require 'cart.php';
?>
<!DOCTYPE html>
<html>
   <head> 
      <title>Stringz</title> 
      <meta charset="utf-8" /> 
   <link href="./css/main.css" rel="stylesheet" type="text/css" />
   </head> 
	<body>
		<div id="pagewrap">
			
<div class =miniwrapper>

<div id=header-sidebar>

	<header>

	<h1 >Stringz</h1>
	<h3 >Buy Musical Instruments and Accessories</h3>


</header>
<h3 style="float: right">Admin Page</h3>

</div>
			
<?php include 'includes/navigation.php'?>			
		

			<section id="content">
				

         	

				<?php include 'includes/adminmainbar.php'; ?>



        
	
			</section>

			
<div id="supersized"></div> 
			
			
<?php include'includes/footer.php'?>	

			</div>
			
		</div>

<?php include 'includes/js_link.php'; ?>

	</body>
</html>