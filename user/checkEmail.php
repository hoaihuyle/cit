<?php 
require_once '../admin/inc/myconnect.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {
    if(isset($_GET["email"]) && $_GET["email"] != ""){
        $email = $_GET["email"];
        $prevQuery = "SELECT `email` FROM users WHERE email = '$email' ";

         $prevResult=mysqli_query($dbc,$prevQuery);

        if($prevResult->num_rows > 0){ 
             $result = array(
                'error' => true,
                'msg' => 'Email đã tồn tại'
            );
        }
        else{
             $result = array(
                'error' => false,
                'msg' => 'Email phù hợp để đăng ký'
            );
        }
    // Return JSON to ajax call
    header('Content-type: application/json');
    echo json_encode($result);
    }
}

?>