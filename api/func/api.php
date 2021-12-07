<?php

require_once('router.php');
require_once('../src/vendor/autoload.php');
require_once('service.php');
use \Firebase\JWT\JWT;

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

class API
{
    //Input datas
    private $_URI;          //URI - /password/cat/id
    private $_method;       //GET - POST - PUT - DELETE
    private $_rawInput;     //Raw input
    private $_auth; //Authorization

    function __construct($inputs)
    {
        //HTTP inputs
        $this->_URI =       $this->_checkKey('URI', $inputs);
        $this->_rawInput =  $this->_checkKey('raw_input', $inputs);
        $this->_method =    $this->_checkKey('method', $inputs);
        $this->_auth =    $this->_checkKey('Auth', $inputs);
    }

    //Return NULL if the key does not exist
    private function _checkKey($key, $array){
        return array_key_exists($key, $array) ? $array[$key] : NULL;
    }

    public function run() {

        //Create the router
        $router = new Router();
        // Populate the router

        // GET homepage
        $router->addRoute('GET', '/', function() {
            echo "Home page";
        });

        // GET info page on a specific date
        $router->addRoute('GET', '/info/:day/:month/:year', function($day,$month,$year) {
            echo "Infos for $day/$month/$year";
        });

        // POST - create new post into CIT
        $router->addRoute('POST', '/create-post', function($request) {
            $data = json_decode(file_get_contents("php://input"), true);
            // $data = stream_get_contents(STDIN);
            $secret_key = "CITHoaCuong@122021";
            
            if($this -> checkToken($secret_key)){
                //If the request is valid
                //Call Service -> Create News
                // $arr = array(
                //     "title" => "Insert Success.",
                //     "description" =>  "Test nếu được thì vui quá trời"
                // );
                // $service = new Service();
                // $result = $service -> createNewPosts((array)$data);
                echo json_encode(
                    array(
                            "message" => "Insert Success.",
                            "result" =>  $data
                    )
                );
                // var_dump ($data);
            }

            // echo json_encode(array("message" => "Product was created."));
        });

        // Execute functions
        // function hello() { echo "Hello "; } 
        // function world() { echo "world "; } 
        // $router->addRoute('GET', '/helloworld' , hello(), world(), function() {
        //     echo "!";
        // });

        //Run the router
        $router->run($this->_method, $this->_URI);
    }

    public function checkToken($secret_key) {

        $arr = explode(" ",  $this->_auth);

        $jwt = $arr[1];
        
        if($jwt){
            try {
                $decoded = JWT::decode($jwt, $secret_key, array('HS256'));
                // Access is granted. Add code of the operation here 
                return true;

            }catch (Exception $e){
                http_response_code(401);
                echo json_encode(array(
                    "message" => "Access denied.",
                    "error" => $e->getMessage()
                ));
            }
        }else{
            echo json_encode(array(
                "message" => "Access denied.",
                "error" => $jwt
            ));
        }
        return false;

    }
}
