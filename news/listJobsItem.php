<?php 
session_start();
require_once '../admin/inc/myconnect.php';
require_once '../admin/inc/function.php';
include('../config/config.php');
if($_SERVER['REQUEST_METHOD'] == 'GET') {

	$limit = $limit_LISTJOBS;
	$offset = ($_GET["dem"]-1)*$limit;
	$get =  $_SESSION['get'];

	$result_query_arr = mysqli_query($dbc,list_news_jobsData($get,$limit,$offset));
	if($result_query_arr->num_rows > 0){ 
		$i=0;
		while ($element_arr =  mysqli_fetch_assoc($result_query_arr)){
			$array[] = $element_arr;
			$i++;
            $strHtmlArr[]=display_htlm_listJobsItem($element_arr);
		}
	}
	if($i - $limit ==0){
		$check = false;
	}else $check = true;

	$result = array(
        'error' => $check,
        'strHtmlArr' => $strHtmlArr
    );
// var_dump($check);
// Return JSON to ajax call
header('Content-type: application/json');
echo json_encode($result);
}

?>