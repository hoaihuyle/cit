<?php 
require_once '../admin/inc/myconnect.php';
if($_SERVER['REQUEST_METHOD'] == 'POST') {
	if(isset($_POST["email"]) && $_POST["email"] != ""){

		$email = $_POST["email"];
		// Bug 
		$query_get = "SELECT u.`id` as uid, `oauth_provider`, `oauth_uid`, `id_app`, `id_em`, `email`, u.`fullname` as ufullname, `token`, `password`, u.`picture` as upicture, `link`, u.`phone` as uphone, `spam`, a.`id` as aid, `id_stu`, `id_aca`, `id_add`, `id_leis`, a.`fullname` as afullname, a.`picture` as apicture, a.`phone` as aphone, `gender`, `birthday`, e.`id` as eid, `id_subcate` 
			FROM `users` as u 
			LEFT JOIN applicant as a ON u.id_app = a.id 
			LEFT JOIN employers as e ON e.id = u.id_em WHERE email= '$email'  ORDER BY u.id ASC";
		// var_dump($query_get);
		$array = [];
		$result_query_arr = mysqli_query($dbc,$query_get) or die(mysqli_error($dbc));
		
		while ($element_arr =  mysqli_fetch_object($result_query_arr)){
			$array[]= $element_arr;
		}

		$result_query_json = json_encode($array);
		echo $result_query_json;
	}
	
}
