<?php
include 'functions.php';
// Your PHP code here.

// Home Page template below.
?>

<?php
$pageName = 'Home';
template_header($pageName);
?>
<div class="content">
	<?php echo "<h2>$pageName</h2>" ?>
	<p>Welcome to the home page!</p>
</div>

<?=template_footer()?>