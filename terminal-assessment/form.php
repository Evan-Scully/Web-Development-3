<?php
$full_name = $_POST['full-name'];
$age = $_POST['age'];
$email = $_POST['email'];

if(!is_numeric($age) || !ctype_alpha($full_name))
{
    die();
}
?>

<html>
    <body>
        <table>
            <tr>
                <td>Name</td>
                <td>Age</td>
                <td>Email</td>
            </tr>
            <tr>
                <td><?php echo $full_name?></td>
                <td><?php echo $age?></td>
                <td><?php echo $email?></td>
            </tr>
        </table>
    </body>
</html>