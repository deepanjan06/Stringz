<div class="scrollspy-example">
	<?php 
if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
	
		if (!isset($_SESSION['user'])) {
		include './includes/adminForm.php';
		if(isset($_SESSION['errors'])){
			foreach ($_SESSION['errors'] as $error){
				echo $error. '<br />';
			}
		}
	} else {
$email=$_SESSION['user'] ;

include './protectpage.php';


		
	}
	?>
	 </div>