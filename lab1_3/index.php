<?php
    require_once('database.php');
?>

<html>
    <head>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div>
        <h2>Car List</h2>
            <table>
                <tr>
                    <th>Identity</th>
                    <th>Make</th>
                    <th>Model</th>
                </tr>

            <?php foreach ($cars as $car) : ?>
                <tr>
                    <td><?php echo $car['id']; ?></td>
                    <td><?php echo $car['make']; ?></td>
                    <td><?php echo $car['model']; ?></td>
                    <td>
                        <form action="delete_product.php" method="post">
                            <input type="hidden" name="id"
                                value="<?php echo $car['id']; ?>" />
                            <input type="submit" value="Delete" />
                        </form>
                    </td>
                    <td>
                        <form action="edit_product_form.php" method="post">
                            <input type="hidden" name="id"
                                value="<?php echo $car['id']; ?>" />
                            <input type="submit" value="Edit" />
                        </form>
                    </td>

                </tr>
            <?php endforeach; ?>
            
            </table>
        </div>
        <h1>Add Car</h1>
        <div>
            <form action="add_product.php" method="post">
                    <label>Identity: </label>
                    <input type="text" name="identity"/><br />
                    <label>Make: </label>
                    <input type="text" name="make"/><br />
                    <label>Model: </label>
                    <input type="text" name="model"/><br />
            </div>
            <div class="button">
                <label>&nbsp;</label>
                <input type="submit" value="Add Car"/>                
            </div> 
        </div>
        
    </body>
</html>