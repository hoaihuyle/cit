<?php

include('admin/inc/database.php');
include('includes/layout_header.php');

// Xử lý/kiểm tra công việc trong bảng
function CreateJobs($db,$nameW){
    $check = $db->fetchOne('jobs',"id ='".$nameW['name']."'");
    if($check == null )
    {
        return $db->insert("jobs", $nameW);   
    }
    return $nameW;
}
//Xử lý thêm news
function CreateNews($db,$new){

}

//Xử lý thêm newJobs
function CreateNewJobs(){

}

//Xử lý Đăng tin
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    _debug($_POST);
    //id_news
    $id_news = '';
    $errors=array();

    // title
        if(empty($_POST['title'])) { $errors[]='title';} 
        else {$news['title']=$_POST['title']; }
    // end time
        if(empty($_POST['etime'])) { $errors[]='etime'; } 
        else { $news['etime']=$_POST['etime'];}
    // info detail work
        if(empty($_POST['infoWork'])) { $errors[] = 'infoWork';}
        else{ $news['infoWork'] = $_POST['infoWork']; }
    // description
        if(empty($_POST['description'])){ $errors[] = 'description';}
        else{ $news['description'] = $_POST['description']; }

        if(isset($_POST['fTime']))
        {
            
            if($_POST['nameWorkfulltime'] != "")
            {
                $nameW['name'] = $_POST['nameWorkfulltime'];
                $priceW = $_POST['priceFull'];
                $typeW = $_POST['TypePrfulltime'];
                //Kiểm tra đã tồn tại tên công việc chưa/ chưa thêm->lấy được id của id_jobs
                $id_Jobs = CreateJobs($db, $nameW);
                //Tạo news
                // CreateNews($db,$news);
            }
        }





    









}






