<?php 
class SearchView{

    public function showForm($listJob, $listCompany, $listPro, $listNews){
        require_once('../_searchForm.php');
    }

    public function redirect($url){
        header("Location: ".$url);
        // require_once('../includes/layout_header.php');
        // $results=$listNews;
        // $numSearchJob = (mysqli_num_rows($results));
        // header('tim-kiem.php');
        // require_once('../includes/layout_footer.php');
    }

}

?>