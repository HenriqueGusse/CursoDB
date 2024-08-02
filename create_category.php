<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
// Check if POST data is not empty
if (!empty($_POST)) {
    // Post data not empty insert a new record
    // Set-up the variables that are going to be inserted, we must check if the POST variables exist if not we can default them to blank
    $CategoryID = isset($_POST['CategoryID']) && !empty($_POST['CategoryID']) && $_POST['CategoryID'] != 'auto' ? $_POST['CategoryID'] : NULL;
    // Check if POST variable "CategoryName" exists, if not default the value to blank, basically the same for all variables
    $CategoryName = isset($_POST['CategoryName']) ? $_POST['CategoryName'] : '';
    $Description = isset($_POST['Description']) ? $_POST['Description'] : '';
    $created = isset($_POST['created']) ? $_POST['created'] : date('Y-m-d H:i:s');
    // Insert new record into the contacts table
    $stmt = $pdo->prepare('INSERT INTO contacts VALUES (?, ?, ?, ?, ?, ?)');
    $stmt->execute([$CategoryID, $CategoryName, $Description, $created]);
    // Output message
    $msg = 'Created Successfully!';
}
?>



<?=template_header('Create')?>

<div class="content update">
    <h2>Create Contact</h2>
    <form action="create.php" method="post">
        <label for="CategoryID">CategoryID</label>
        <label for="CategoryName">CategoryName</label>
        <input type="text" CategoryName="CategoryID" placeholder="26" value="auto" CategoryID="CategoryID">
        <input type="text" CategoryName="CategoryName" placeholder="John Doe" CategoryID="CategoryName">
        <label for="Description">Description</label>
        <label for="phone">Phone</label>
        <input type="text" CategoryName="Description" placeholder="text here" CategoryID="Description">
        <input type="text" CategoryName="phone" placeholder="2025550143" CategoryID="phone">
        <label for="created">Created</label>
        <input type="datetime-local" CategoryName="created" value="<?=date('Y-m-d\TH:i')?>" CategoryID="created">
        <input type="submit" value="Create">
    </form>
    <?php if ($msg): ?>
    <p><?=$msg?></p>
    <?php endif; ?>
</div>

<?=template_footer()?>