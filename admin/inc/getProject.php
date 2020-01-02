<?php
	include ('myconnect.php');
	include ('function.php');
	if($_SERVER['REQUEST_METHOD'] == 'POST') {
		if(isset($_POST["menuid"]) && $_POST["menuid"] != ""){
			if($_POST["menuid"] == 0) {
				$query_get_menu_prj = "SELECT id, name FROM menu ORDER BY id ASC";
			} else {
				$query_get_menu_prj = "SELECT id, name FROM menu WHERE menu_id = ".$_POST["menuid"]." ORDER BY id ASC";
			}
			$array = [];
			$result_query_arr = mysqli_query($dbc,$query_get_menu_prj) or die(mysqli_error($dbc));
			
			while ($element_arr =  mysqli_fetch_object($result_query_arr)){
				$array[]= $element_arr;
			}
			$result_query_json = json_encode($array);
			echo $result_query_json;
		}
		else
		{
			if(isset($_POST["cateid"]) && $_POST["cateid"] != ""){
				if($_POST["cateid"] == 0) {
					$query_get_menu_prj = "SELECT id, name FROM category ORDER BY id ASC";
				} else {
					$query_get_menu_prj = "SELECT id, name FROM category WHERE id_cate = ".$_POST["cateid"]." ORDER BY id ASC";
				}
				$array = [];
				$result_query_arr = mysqli_query($dbc,$query_get_menu_prj) or die(mysqli_error($dbc));
				
				while ($element_arr =  mysqli_fetch_object($result_query_arr)){
					$array[]= $element_arr;
				}
				$result_query_json = json_encode($array);
				echo $result_query_json;
				}
			else{
				if(isset($_POST["typeid"]) && $_POST["typeid"] != ""){
					if($_POST["typeid"] == 0) {
						$query_get_menu_prj = "SELECT * FROM type_post 
							LEFT JOIN menu ON type_post.menu_id=menu.id
						ORDER BY type_post.id ASC";

					} else {
						$query_get_menu_prj = "SELECT * FROM type_post WHERE id = ".$_POST["typeid"]." ORDER BY id ASC";
					}
					$array = [];
					$result_query_arr = mysqli_query($dbc,$query_get_menu_prj) or die(mysqli_error($dbc));
					
					while ($element_arr =  mysqli_fetch_object($result_query_arr)){
						$array[]= $element_arr;
					}
					$result_query_json = json_encode($array);
					echo $result_query_json;
				}
			}
		}
	}
?>