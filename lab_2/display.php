<?php
$product_description = $_POST['product_description'];
$list_price = $_POST['list_price'];
$discount_percentage = $_POST['discount_percentage'];

$discount_amount =  $list_price / $discount_percentage;
$final_price = $list_price - $discount_amount;

?>

<head>
    <link rel="stylesheet" href="style.css">
</head>

<html>
    <body>
        <div class="content">
            <h1>Product Discount Calculator</h1>
            <label>Product Description: </label>
            <?php echo $product_description; ?></br>
            <label>List Price: </label>
            <?php echo "$$list_price"; ?></br>
            <label>Standard Discount: </label>
            <?php echo "$discount_percentage%"; ?></br>
            <label>Discount Amount: </label>
            <?php echo "$$discount_amount"; ?></br>
            <label>Discount Price: </label>
            <?php echo "$$final_price"; ?></br>
        </div>
    </body>
</html>