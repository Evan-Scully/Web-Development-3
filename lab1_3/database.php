<?php
    $dsn = 'mysql:host=localhost:3306;dbname=main';
    $username = 'root';
    $password = 'Sheogorath99?';

    try{
        $db = new PDO($dsn, $username, $password);
        //echo "You have connected";
    }
    catch (PDOException $e){
        $error_message = $e->getMessage();
        include('database_error.php');
        exit();
    }

$query = 'SELECT * FROM products';
$cars = $db->query($query);
//$cars contain the result set   

?>