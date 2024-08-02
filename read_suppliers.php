<?php
include 'functions.php';

// Connect to MySQL database
$pdo = pdo_connect_mysql();

// Get the page via GET request (URL param: page), if non exists default the page to 1
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;

// Number of records to show on each page
$records_per_page = 5;

// Prepare the SQL statement and get records from our suppliers table, LIMIT will determine the page
$stmt = $pdo->prepare('SELECT * FROM suppliers ORDER BY SupplierID LIMIT :current_page, :record_per_page');
$stmt->bindValue(':current_page', ($page-1)*$records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':record_per_page', $records_per_page, PDO::PARAM_INT);
$stmt->execute();

// Fetch the records so we can display them in our template.
$suppliers = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get the total number of suppliers, this is so we can determine whether there should be a next and previous button
$num_suppliers = $pdo->query('SELECT COUNT(*) FROM suppliers')->fetchColumn();
?>

<?php
    $pageName = 'Suppliers';
    template_header($pageName);
?>

<div class="content read">
    <?php echo "<h2>$pageName</h2>" ; ?>
    <a href="create.php" class="create-contact">Create Supplier</a>
	<table>
        <thead>
            <tr>
                <td>SupplierID</td>
                <td>supplierName</td>
                <td>ContactName</td>
                <td>Address</td>
                <td>City</td>
                <td>PostalCode</td>
                <td>Country</td>
                <td>Phone</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($suppliers as $supplier): ?>
            <tr>
                <td><?=$supplier['SupplierID']?></td>
                <td><?=$supplier['supplierName']?></td>
                <td><?=$supplier['ContactName']?></td>
                <td><?=$supplier['Address']?></td>
                <td><?=$supplier['City']?></td>
                <td><?=$supplier['PostalCode']?></td>
                <td><?=$supplier['Country']?></td>
                <td><?=$supplier['Phone']?></td>
                <td class="actions">
                    <a href="update.php?id=<?=$supplier['SupplierID']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>
                    <a href="delete.php?id=<?=$supplier['SupplierID']?>" class="trash"><i class="fas fa-trash fa-xs"></i></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="<?php basename(__FILE__)?>?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_suppliers): ?>
		<a href="<?php basename(__FILE__)?>?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>