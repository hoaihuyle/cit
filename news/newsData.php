<?php 

require_once '../admin/inc/myconnect.php';
if($_SERVER['REQUEST_METHOD'] == 'GET') {
	$nid = $_GET["nid"];
	$query_get= "SELECT `id`, `id_type`, `id_job`, `id_province`, `id_subcate`, `title`, `description`, `files`, `price`, `start_pr`, `end_pr`, `role`, `timestamp`, `sort_order`, `contacts` FROM `news` WHERE id='$nid' ORDER BY id ASC";
	$result_query_arr = mysqli_query($dbc,$query_get) or die(mysqli_error($dbc));

	while ($element_arr =  mysqli_fetch_object($result_query_arr))
	{
		// var_dump((array)$element_arr);
		$array= (array)$element_arr;
		
	}
// var_dump($check);
// Return JSON to ajax call
header('Content-type: application/json');
echo json_encode($array);
}

?>