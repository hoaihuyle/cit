<?php 
// include('../Model/Beans/JobBean.php');
// include('../Model/Beans/CompanyBean.php');
// include('../Model/Beans/ProvinceBean.php');
include('../admin/inc/database.php');
include('../Model/DAO/JobDAO.php');
include('../Model/DAO/ProvinceDAO.php');
include('../Model/DAO/CompanyDAO.php');
include('../Model/DAO/NewsDAO.php');
include('../Views/SearchView.php');

$j = new JobDAO();
$c = new CompanyDao();
$p = new ProvinceDAO();
$n = new NewsDAO();

$url = "https://cit.cit/search";
$CONST="/L%E1%BB%8Dc";

$searchView = new SearchView();//Class View

if($_SERVER['REQUEST_METHOD'] == 'GET') {
//     var_dump($_GET);
// die();
    // if($_GET["job"]==0 && $_GET["province"]==0 && $_GET["company"]==0 && $_GET["search"]==""){
    //     header("location:https://cit.cit/");
    //     exit;
    // }
    if($_GET["search"]==""){
        $_GET["search"]="null";
    }
    foreach($_GET as $st){
        $url.="/".$st;
    }
    // var_dump($url);
    // die();
    $searchView->redirect($url);
}

if($_SERVER['REQUEST_METHOD'] == 'POST') {

    $listJob = $j -> listJob($db);
    $listCompany = $c -> listCompany($db);
    $listPro = $p -> listProvince($db);
    $listNews = $n -> listNewsActive($db);

    $html = $searchView->showForm($listJob, $listCompany, $listPro, $listNews);
}


?>