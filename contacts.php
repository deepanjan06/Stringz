<?php
require './includes/init.php';
require 'cart.php';
?>
<!DOCTYPE html>
<html>
 <head> 
      <title>Contacts</title> 
      <meta charset="utf-8" /> 
      <?php include 'includes/css_link.php'; ?>
   </head> 
	<body>
		<div id="pagewrap">
			
<div class =miniwrapper>

<?php include 'includes/header.php'?>
			
<?php include 'includes/navigation.php'?>			
		

			<section id="content">
				<div class="scrollspy-example">
					

	
<address><br>
  <strong>Stringz</strong><br>
  15 Woodhouse Flats <br>West Yorkshire<br>
  Leeds, LS2 9EP<br>
  <abbr title="Phone">Phone:</abbr> 07951112511 <br>
   <a href="mailto:#">contact@stringz.com</a>
<br>
</address>
 <br>
<address>
  <strong>Deepanjan Paul</strong><br>
  <a href="mailto:#">deepanjan.paul@hotmail.com</a>
</address>
	
	<?php include'maps.php'?>	
	
			</section>

			
<div id="supersized"></div> 
			
			
			
<?php include'includes/footer.php'?>			
			</div>
		</div>

<?php include 'includes/js_link.php'; ?>

	</body>
</html>