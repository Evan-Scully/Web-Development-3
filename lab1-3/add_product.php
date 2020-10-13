<?php

    require_once('database.php');

    $id = $_POST['identity'];
    $make = $_POST['make'];
    $model = $_POST['model'];

    $query = "INSERT INTO products
    (id, make, model) VALUES
    ($id, '$make', '$model')";

    $insert_car = $db->exec($query);

    require_once('index.php');

?>