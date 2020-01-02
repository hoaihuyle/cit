<!-- userSignUp.php -->
<?php
session_start();

// Load the database configuration file
require_once '../admin/inc/myconnect.php'; 
 
//Convert JSON data into PHP variable
$userData = json_decode($_POST['userData']);
//Save Session user 
$arSession = array('id' => $userData->id,'name'=> $userData->fullname );
// var_dump($arSession);
$_SESSION['user'] = $arSession;
// $oauth_provider = explode(".",$_POST['oauth_provider'])['0'];
$oauth_provider = explode(".",$userData->oauth)['0'];
//break the string up around the "." character in $mystring 

if(!empty($oauth_provider)){

    //Check whether user data already exists in database
    $prevQuery = "SELECT * FROM users WHERE oauth_provider ='".$oauth_provider."' AND oauth_uid = '".$userData->id."'";
    
     $prevResult=mysqli_query($dbc,$prevQuery);
    // $prevResult = $db->query($prevQuery);
     // var_dump($prevQuery);
     // var_dump($prevResult);
    if($prevResult->num_rows > 0){ 
        //Update user data if already exists
        $query = "UPDATE users SET fullname = '".$userData->fullname."', email = '".$userData->email."', picture = '".$userData->link."', modified = '".date("Y-m-d H:i:s")."' WHERE oauth_provider = '".$oauth_provider."' AND oauth_uid = '".$userData->id."'";
        // $update = $db->query($query);
             $update=mysqli_query($dbc,$query);

    }else{

        //Insert user data
        $query = "INSERT INTO users SET oauth_provider = '".$oauth_provider."', oauth_uid = '".$userData->id."', fullname = '".$userData->fullname."', email = '".$userData->email."', picture = '".$userData->link."',created = '".date("Y-m-d H:i:s")."', modified = '".date("Y-m-d H:i:s")."'";
            // $insert = $db->query($query);
            $insert=mysqli_query($dbc,$query);


    }
}

?>