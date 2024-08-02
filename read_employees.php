<?php
include 'functions.php';

// Connect to MySQL database
$pdo = pdo_connect_mysql();

// Get the page via GET request (URL param: page), if non exists default the page to 1
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? (int)$_GET['page'] : 1;

// Number of records to show on each page
$records_per_page = 5;

// Prepare the SQL statement and get records from our employees table, LIMIT will determine the page
$stmt = $pdo->prepare('SELECT * FROM employees ORDER BY EmployeeID LIMIT :current_page, :record_per_page');
$stmt->bindValue(':current_page', ($page-1)*$records_per_page, PDO::PARAM_INT);
$stmt->bindValue(':record_per_page', $records_per_page, PDO::PARAM_INT);
$stmt->execute();

// Fetch the records so we can display them in our template.
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Get the total number of employees, this is so we can determine whether there should be a next and previous button
$num_employees = $pdo->query('SELECT COUNT(*) FROM employees')->fetchColumn();
?>

<?php
    $pageName = 'Employees';
    template_header($pageName);
?>

<div class="content read">
    <?php echo "<h2>$pageName</h2>" ; ?>
    <a href="create.php" class="create-contact">Create Employee</a>
	<table>
        <thead>
            <tr>
                <td>EmployeeID</td>
                <td>LastName</td>
                <td>FirstName</td>
                <td>BirthDate</td>
                <td>Photo</td>
                <td>Notes</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($employees as $employee): ?>
            <tr>
                <td><?=$employee['EmployeeID']?></td>
                <td><?=$employee['LastName']?></td>
                <td><?=$employee['FirstName']?></td>
                <td><?=$employee['BirthDate']?></td>
                <td><?=$employee['Photo']?></td>
                <td><?=$employee['Notes']?></td>
                <td class="actions">
                    <a href="update.php?id=<?=$employee['EmployeeID']?>" class="edit"><i class="fas fa-pen fa-xs"></i></a>
                    <a href="delete.php?id=<?=$employee['EmployeeID']?>" class="trash"><i class="fas fa-trash fa-xs"></i></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
	<div class="pagination">
		<?php if ($page > 1): ?>
		<a href="<?php basename(__FILE__)?>?page=<?=$page-1?>"><i class="fas fa-angle-double-left fa-sm"></i></a>
		<?php endif; ?>
		<?php if ($page*$records_per_page < $num_employees): ?>
		<a href="<?php basename(__FILE__)?>?page=<?=$page+1?>"><i class="fas fa-angle-double-right fa-sm"></i></a>
		<?php endif; ?>
	</div>
</div>

<?=template_footer()?>