<?php

    require_once('database.php');    

    $id = $_POST['id'];
    
    foreach ($cars as $car)
    {
        if($car['id'] == $id)
        {
            $make = $car['make'];
        }
        if($car['id'] == $id)
        {
            $model = $car['model'];
        }
    }

?>

<html>
    <body>
        <h1>Edit Car</h1>
        <div>
            <form action="edit_product.php" method="post">
            <label>Identity: </label>
            <input type="text" name="identity" value="<?php echo $id; ?>"/><br />
            <label>Make: </label>
            <input type="text" name="make" value="<?php echo $make; ?>"/><br />
            <label>Model: </label>
            <input type="text" name="model" value="<?php echo $model ?>"/><br />
        </div>
        <div class="button">
            <label>&nbsp;</label>
            <input type="submit" value="Edit Car"/> 
            </form>              
        </div> 
    </body>
</html>