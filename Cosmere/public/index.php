<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/../vendor/autoload.php';

$app = AppFactory::create();

$app->addBodyParsingMiddleware();
$app->setBasePath("/Cosmere/public");


// The app has started working
$app->get('/', function (Request $request, Response $response, $args) {

    //$usernamePassword = $request->getHeader("Authorization");
    //$decoded = base64_decode($usernamePassword[0]);

    require_once('index.html');
    //require_once('php/displaybooks.php');
    $response->getBody()->write("");
    return $response;
});

// Get all book
$app->get('/books', function (Request $request, Response $response, $args) {

    require_once('database.php');
    //Get all books
    $query = 'SELECT * FROM book';
    $book = $db->query($query)->fetchAll(PDO::FETCH_ASSOC);
    //$book contain the result set    
    $response->getBody()->write(json_encode($book));
    return $response->withHeader('Content-Type', 'application/json');
});

// Get book with a specific ID
$app->get('/book/{id}', function (Request $request, Response $response, $args) {

    require_once('database.php');

    // Get book with ID
    $id = $args['id'];
    $query = "SELECT * FROM book WHERE book_id = $id";
    $book = $db->query($query)->fetchAll(PDO::FETCH_ASSOC);

    //$book contain the result set    
    $response->getBody()->write(json_encode($book));
    
    return $response->withHeader('Content-Type', 'application/json')->withStatus(200);
});

// Delete book with a specific ID
$app->delete('/book/{id}', function (Request $request, Response $response, $args) {

    require_once('database.php');
    // Get book with ID
    $id = $args['id'];
    $query = "DELETE FROM book  WHERE book_id = $id";
    $insert_count = $db->exec($query);
    //$book contain the result set    
    $response->getBody()->write(json_encode($insert_count));
    return $response->withHeader('Content-Type', 'application/json');
});

// Add new book
$app->post('/book', function (Request $request, Response $response, $args) {

    require_once('database.php');

    // Get book details
    $formData = (array)$request->getParsedBody();

    $name = $formData["name"];
    $author = $formData["author"];
    $blurb = $formData["blurb"];
    $pages = $formData["pages"];
    $word_count = $formData["word_count"];
    $series = $formData["series"];
    $pov_character = $formData["pov_character"];
    $image = $formData["image"];

    $query = "INSERT INTO book (name, author, blurb, pages, word_count, series, pov_character, image)  
    VALUES ('$name', '$author', '$blurb', '$pages', '$word_count', '$series', '$pov_character','$image')";

    $sql = $db->exec($query);
    
    //$book contain the result set    
    $response->getBody()->write(json_encode($sql));
    return $response->withHeader('Content-Type', 'application/json');

});

// Update new book using x-www-form-urlencoded content type
$app->put('/book/{id}', function (Request $request, Response $response, $args) {

    require_once('database.php');
    // Get book details
    $formData = (array)$request->getParsedBody();

    $id = $args['id'];
    $name = $formData["name"];
    $author = $formData["author"];
    $blurb = $formData["blurb"];
    $pages = $formData["pages"];
    $word_count = $formData["word_count"];
    $series = $formData["series"];
    $pov_character = $formData["pov_character"];
    $image = $formData["image"];

    $query = "UPDATE book set name = '$name', author = '$author',blurb = '$blurb', pages = '$pages',word_count = '$word_count', series = '$series',pov_character = '$pov_character', 
    image = '$image' WHERE book_id = '$id'";
    $sql = $db->exec($query);

    $response->getBody()->write(json_encode($sql));
    return $response->withHeader('Content-Type', 'application/json');
});

// Get all book
$app->get('/users', function (Request $request, Response $response, $args) {

    require_once('database.php');
    //Get all users
    $query = 'SELECT * FROM user';
    $user = $db->query($query)->fetchAll(PDO::FETCH_ASSOC);
    //$user contain the result set    
    $response->getBody()->write(json_encode($user));
    return $response->withHeader('Content-Type', 'application/json');
});

// Get user with a specific name
$app->get('/user/{username}', function (Request $request, Response $response, $args) {

    require_once('database.php');
    $username = $args['username'];
    $query = "SELECT * FROM user WHERE username = '$username'";
    $user = $db->query($query)->fetchAll(PDO::FETCH_ASSOC);
 
    $response->getBody()->write(json_encode($user));
    return $response->withHeader('Content-Type', 'application/json')->withStatus(200);
});

// Delete user with a specific name
$app->delete('/user/{username}', function (Request $request, Response $response, $args) {

    require_once('database.php');
    $username = $args['username'];
    $query = "DELETE FROM user  WHERE username = '$username'";
    $user = $db->exec($query); 
    $response->getBody()->write(json_encode($user));
    return $response->withHeader('Content-Type', 'application/json');
});

// Add new user
$app->post('/user', function (Request $request, Response $response, $args) {

    require_once('database.php');

    $formData = (array)$request->getParsedBody();

    $username = $formData["username"];
    $name = $formData["name"];
    $password = $formData["password"];
    $image = $formData["image"];

    $query = "INSERT INTO user (username, name, password, image)  
    VALUES ('$username', '$name', '$password','$image')";

    $sql = $db->exec($query);
    
    //$book contain the result set    
    $response->getBody()->write(json_encode($sql));
    return $response->withHeader('Content-Type', 'application/json');

});

// Update new user using x-www-form-urlencoded content type
$app->put('/user/{username}', function (Request $request, Response $response, $args) {

    require_once('database.php');
    // Get book details
    $formData = (array)$request->getParsedBody();

    $username = $args['username'];
    $name = $formData["name"];
    $password = $formData["password"];
    $image = $formData["image"];

    $query = "UPDATE user set name = '$name', password = '$password', 
    image = '$image' WHERE username = '$username'";
    $insert_count = $db->exec($query);

    //$book contain the result set    
    $response->getBody()->write(json_encode($insert_count));
    return $response->withHeader('Content-Type', 'application/json');
});

try {
    $app->run();     
} catch (Exception $e) {    
    // Error Message
    $error_message = $e->getMessage();
    //echo($error_message);
    
    // 500 Internal Server Error
    $last_error = error_get_last();
    if ($last_error && $last_error['type']==E_ERROR)
    {
        http_response_code(500);
        include('php/500.php');
        die();
    }

    // 404 Server Error
    http_response_code(404);
    include('php/404.php');
    die();

    
    // die( json_encode(array("status" => "failed", "message" => "This action is not allowed"))); 
}

?>