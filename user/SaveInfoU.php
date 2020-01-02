<?php 

// Load the database configuration file
require_once '../admin/inc/myconnect.php'; 
if($_SERVER['REQUEST_METHOD'] == 'POST') {
        //Convert JSON data into PHP variable
	if( isset($_POST["id"]) && isset($_POST["name"]) && isset($_POST["type"])){
		$id = $_POST['id'];
		$name = $_POST['name'];
		$type = $_POST['type'];

		if($type==1){
        	//Insert user data applicant Account
			$query = "INSERT INTO applicant (fullname) VALUES('". $name ."')";
			$insert=mysqli_query($dbc,$query);
        	// var_dump($insert);
			if($insert){
				$news_id = $dbc->insert_id;
				$queryupdate = "UPDATE users SET id_app = ".$news_id." WHERE id = ".$id;
				$update=mysqli_query($dbc,$queryupdate);
			}
		}
		else{
			//Sign Employers
			//Insert user data applicant Account
			$query = "INSERT INTO applicant (fullname) VALUES('". $name ."')";;
			$insert=mysqli_query($dbc,$query);
        	// var_dump($insert);
			if($insert){
				$news_id = $dbc->insert_id;
				$queryupdate = "UPDATE users SET id_app = ".$news_id." WHERE id = ".$id;
				$update=mysqli_query($dbc,$queryupdate);
			}

			//Insert user data applicant Account
			$query = "INSERT INTO employers (fullname) VALUES('". $name ."')";

        	// $insert = $db->query($query);
        	// var_dump($query);
			$insert=mysqli_query($dbc,$query);
        	// var_dump($insert);
			if($insert){
				$news_id = $dbc->insert_id;
				$queryupdate = "UPDATE users SET id_em = ".$news_id." WHERE id = ".$id;
				$update=mysqli_query($dbc,$queryupdate);
			}
		}

		//Check whether user data already exists in database
	    $prevQuery = "SELECT u.`id` as uid, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, u.`fullname` as ufullname, u.`picture` as upicture, `link`, u.`phone` as uphone, `spam`, a.`fullname` as afullname, a.`picture` as apicture FROM `users` as u LEFT JOIN applicant as a ON u.id_app = a.id
	        WHERE u.id = '".$id."'";
	    
	    $prevResult=mysqli_query($dbc,$prevQuery);
	    $array = [];
		$result_query_arr = mysqli_query($dbc,$prevQuery) or die(mysqli_error($dbc));

		while ($element_arr =  mysqli_fetch_object($result_query_arr)){
		    $array[]=$element_arr;
		}

		$result_query_json = json_encode($array);
		echo $result_query_json;
	}
}

?>