Simply copy this folder into the htdocs folder of your web server (Apache or XAMPP).

Things you need to change
--------------------

1) Line 10 of the index.php needs to be update to reflect the path of the folder you have copied this zip file to.

For e.g if you copied this zip file to C:\xampp\htdocs\slim-test, then you need to update line 10 to

$app->setBasePath("/slim-test/public");

2) change the database details in database.php to match your database details

3) change the database table name in line 23 of index.php to reflect the table name of your database

4) Enter http://localhost/slim-test/public/ to get the "Hello World" text output

5) Enter http://localhost/slim-test/public/cars to see list of cars JSON output