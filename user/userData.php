<?php
session_start();

// Load the database configuration file
require_once '../admin/inc/myconnect.php'; 

//$id is oauth_id (primary id supply by firebase)
 
//Convert JSON data into PHP variable
$userData = json_decode($_POST['userData']);
//Save Session user 
$arSession = array('id' => $userData->id,'name'=> $userData->fullname );

$_SESSION['user'] = $arSession;
// $oauth_provider = explode(".",$_POST['oauth_provider'])['0'];
$oauth_provider = explode(".",$userData->oauth)['0'];
//break the string up around the "." character in $mystring 

if(!empty($oauth_provider)){

    $delteQuery="SELECT u.`id` as uid, `oauth_provider`, `oauth_uid` FROM `users` as u WHERE oauth_uid = '".$userData->id."' AND ( email IS NULL OR email = '' )";
    $delteResult=mysqli_query($dbc,$delteQuery);
    if(mysqli_num_rows($delteResult)>0){
        while($row=mysqli_fetch_array($delteResult,MYSQLI_ASSOC))
        {
            $query_delete="DELETE FROM `users` WHERE id=".$row['uid'];
            $delete=mysqli_query($dbc,$query_delete);
        }
    }

    //Check whether user data already exists in database
    $prevQuery = "SELECT u.`id` as uid, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, u.`fullname` as ufullname, u.`picture` as upicture, `link`, u.`phone` as uphone, `spam`, a.`fullname` as afullname, a.`picture` as apicture FROM `users` as u LEFT JOIN applicant as a ON u.id_app = a.id
        WHERE email = '".$userData->email."'";
    
    $prevResult=mysqli_query($dbc,$prevQuery);
    
    if($prevResult->num_rows > 0){ 
        //Update user data if already exists
        $query = "UPDATE users SET oauth_provider = '".$oauth_provider."', oauth_uid = '".$userData->id."' ,fullname = '".$userData->fullname."', picture = '".$userData->link."', modified = '".date("Y-m-d H:i:s")."' WHERE email = '".$userData->email."'";
        // $update = $db->query($query);
             $update=mysqli_query($dbc,$query);

    }else{
        //Insert user data
        $query = "INSERT INTO users SET oauth_provider = '".$oauth_provider."', oauth_uid = '".$userData->id."', fullname = '".$userData->fullname."', email = '".$userData->email."', picture = '".$userData->link."',created = '".date("Y-m-d H:i:s")."', modified = '".date("Y-m-d H:i:s")."'";
            // $insert = $db->query($query);
            $insert=mysqli_query($dbc,$query);
    }




}

$array = [];
$result_query_arr = mysqli_query($dbc,$prevQuery) or die(mysqli_error($dbc));

while ($element_arr =  mysqli_fetch_object($result_query_arr)){
    $array[]=$element_arr;
}

$result_query_json = json_encode($array);
echo $result_query_json;

?>