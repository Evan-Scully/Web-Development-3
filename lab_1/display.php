<?php
$first_name = $_GET['first_name'];
$last_name = $_GET['last_name'];

$name = "Your first name is: " .$first_name;
$l_name = "Your last name is: " .$last_name;
?>

<html>
    <body>
        <p> <?php echo $name; ?> <p>
        <p> <?php echo $l_name; ?> <p>
    </body>
</html>