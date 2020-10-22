<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

require __DIR__ . '/../vendor/autoload.php';

$app = AppFactory::create();

$app->setBasePath("/ait-work/2020-sem1-web-dev-3/api/public");

// Hello World
$app->get('/', function (Request $request, Response $response, $args) {
  $response->getBody()->write("Hello World");
  return $response;
});

// Get all cars
$app->get('/cars', function (Request $request, Response $response, $args) {

    require_once('database.php');
  // Get all cars
  $query = 'SELECT * FROM cars';
  $cars = $db->query($query)->fetchAll(PDO::FETCH_ASSOC);
  //$cars contain the result set    
    $response->getBody()->write(json_encode($cars));
    return $response->withHeader('Content-Type', 'application/json');
});

try {
    $app->run();     
} catch (Exception $e) {    
  // We display a error message
  die( json_encode(array("status" => "failed", "message" => "This action is not allowed"))); 
}