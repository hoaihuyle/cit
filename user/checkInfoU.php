<?php 

require_once '../admin/inc/myconnect.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {
	$oauthId = $_GET["oauthId"];
	// var_dump($fullname);
	$check=true;
	$query_get= "SELECT u.`id` as uid, a.`id` as aid, a.`fullname` as afullname, a.`phone` as aphone, `gender`, `birthday`, `oauth_uid`
				FROM `users` as u 
				LEFT JOIN applicant as a ON u.id_app = a.id 
			 WHERE oauth_uid = $oauthId ORDER BY u.id ASC";
	$result_query_arr = mysqli_query($dbc,$query_get) or die(mysqli_error($dbc));

	while ($element_arr =  mysqli_fetch_object($result_query_arr))
	{
		// var_dump((array)$element_arr);
		$array= (array)$element_arr;
		
	}
 
	foreach ($array as $key) {
		# code...
		if(is_null($key))
			$check=false;
	}

	$result = array(
		'array' => $array,
        'error' => $check,
    );
	// var_dump($check);
// Return JSON to ajax call
header('Content-type: application/json');
echo json_encode($result);
}

?>