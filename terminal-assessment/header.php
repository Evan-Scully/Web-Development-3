<?php
$array = array(
    "Home" => "/",
    "About us" => "/about-us",
    "Services" => "/services",
    "Contact us" => "contact-us",
);

function createMenu()
{
    $menu = "";
    global $array;

    foreach ($array as $key => $value) {
        $menu.= "<li><a href='{$value}'>{$key}</li>";
    }
    return $menu;
}

?>

<html>
    <body>
        <ul>
            <?php echo createMenu() ?></br>
        </ul>
    </body>
</html>