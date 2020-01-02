<?php 
// Load the database configuration file
require_once '../admin/inc/myconnect.php';
require_once '../admin/inc/function.php'; 
if($_SERVER['REQUEST_METHOD'] == 'POST') {
        //Convert JSON data into PHP variable
	if( isset($_POST["activeid"]) && isset($_POST["aid"]) && isset($_POST["rating"]) ){
		$activeid = $_POST['activeid'];
		$aid = $_POST['aid'];
		$rating = $_POST['rating'];

		$queryupdate = "UPDATE applies SET rating = ".$rating." WHERE id_active = ".$activeid." AND id_app = ". $aid;
		$update=mysqli_query($dbc,$queryupdate);  

		$updateC=false;

		if(isset($_POST['companyid'])){
			$companyid = $_POST['companyid'];
			$queryupdate = "UPDATE companies SET rateMark = ".total_numsMark_company($companyid)." WHERE id = $companyid";
			$updateC=mysqli_query($dbc,$queryupdate);  
		} 
	}
	$result = array(
		'upRating' => $update,
		'upMarkCo' => $updateC
	);
	header('Content-type: application/json');
	echo json_encode($result);
}

?>