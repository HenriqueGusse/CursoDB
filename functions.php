<?php
function pdo_connect_mysql() {
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'w3schools';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }
}
function template_header($title) {
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
	</head>
	<body>
    <nav class="navtop">
    	<div>
    		<h1>Northwind</h1>
            <a href="index.php"><i class="fas fa-home"></i>Home</a>
			<a href="read_categories.php"><i class="fas fa-address-book"></i>Categories</a>
    		<a href="read_customers.php"><i class="fas fa-address-book"></i>Customers</a>
			<a href="read_employees.php"><i class="fas fa-address-book"></i>Employees</a>
			<a href="read_orderdetails.php"><i class="fas fa-address-book"></i>Order Details</a>
			<a href="read_orders.php"><i class="fas fa-address-book"></i>Orders</a>
			<a href="read_products.php"><i class="fas fa-address-book"></i>Products</a>
			<a href="read_shippers.php"><i class="fas fa-address-book"></i>Shippers</a>
			<a href="read_suppliers.php"><i class="fas fa-address-book"></i>Suppliers</a>
    	</div>
    </nav>
EOT;
}
function template_footer() {
echo <<<EOT
    </body>
</html>
EOT;
}
?>