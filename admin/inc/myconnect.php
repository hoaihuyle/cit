<?php
//Kết Nối Với CSDL
$host = 'localhost';
$username = 'root';
$password = '';
$dbname = 'cit_db';
$dbc = mysqli_connect($host, $username, $password, $dbname);
//Nếu Kết Nối Không Thành Công Sẽ Báo Lỗi
if(!$dbc)
{
	echo "Kết Nối Không Thành Công";
}
else
{
	mysqli_set_charset($dbc,'utf8');
}
// get full link
// $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
// Timezone
date_default_timezone_set("Asia/Saigon");

?>