<?php 
    $num1 = 25;
    $num2 = 35;
    function myFunction($num2) {
        $num1 = 35;
        global $num1;
        $num3 = ($num2 + $num1);
        return $num3;
    }
    $result = myFunction(25);

    echo $result;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php echo $result; ?></br> 
</body>
</html>