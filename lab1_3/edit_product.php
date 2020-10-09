<?php

    require_once('database.php');    

    $id = $_POST['identity'];
    $make = $_POST['make'];
    $model = $_POST['model'];

    $query = "UPDATE products
    SET make = $make, model = $model
    WHERE id = $id";


    $update_car = $db->exec($query);

    require_once('index.php');    

?>