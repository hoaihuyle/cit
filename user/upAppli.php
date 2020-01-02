<?php

// Load the database configuration file
require_once '../admin/inc/myconnect.php'; 

//Convert JSON data into PHP variable
$appliData = json_decode($_POST['appliData']);

//Check whether user data already exists in database
$prevQuery = "SELECT * FROM applicant WHERE id ='".$appliData->id."'";

$prevResult=mysqli_query($dbc,$prevQuery);

if($prevResult->num_rows > 0){ 
    //Update user data if already exists
	if(isset($appliData->male)) $gender = 1;
		else $gender = 0;
	$birthday=null;
	if(isset($appliData->birth)) $birthday = date("Y-m-d", strtotime($appliData->birth));

    $query="UPDATE `applicant` SET `fullname`='".$appliData->name."',`phone`='".$appliData->phone."' WHERE id = '".$appliData->id."' ";
    $update=mysqli_query($dbc,$query);
    // var_dump($query);
    // var_dump($update);
    $query="UPDATE `users` SET 
    `gender`='".$gender."',
    `email`='".$appliData->email."',
    `birthday`='".$birthday."'
    WHERE id_app = '".$appliData->id."' ";
    $update=mysqli_query($dbc,$query);

}

?>