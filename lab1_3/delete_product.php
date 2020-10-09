<?php
require_once('database.php');

$id = $_POST['id'];

$query = "DELETE FROM products
WHERE id = $id";

$delete_count = $db->exec($query);

require_once('index.php');
?>
