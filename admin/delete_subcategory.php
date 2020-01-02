<?php include ('inc/myconnect.php');
	include('inc/function.php');
	if(isset($_GET['id']) && filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1)))
	{
		$id=$_GET['id'];
		//xoa hinh anh trong file upload
		$sql="SELECT * FROM companies WHERE id={$id}";
		$query_a=mysqli_query($dbc,$sql);
		$query="DELETE FROM companies WHERE id={$id}";
		$result=mysqli_query($dbc,$query);
		kt_query($result,$query);
		header('Location: list_subcategory.php');
	}
	else 
	{
		header('Location: list_subcategory.php');
	}
?>