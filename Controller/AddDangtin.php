<?php

include('admin/inc/database.php');
include('includes/layout_header.php');

// Xử lý/kiểm tra công việc trong bảng
function CreateJobs($db,$nameW){
    $check = $db->fetchOne('jobs',"id ='".$nameW."'");
    if($check == null )
    {
        $name['name'] = $nameW;
        return $db->insert("jobs", $name);   
    }
    return $nameW;
}
//Xử lý công việc full/part/one
// function checkWorkTime($POST, $num, $text, $price, $type, $db, $id_new){
function checkWorkTime($POST, $db, $arr){
    foreach($POST as $val => $par)
    {

        if(substr($val, 0,$arr['num']) === $arr['name'])
            {
                $numEnd = substr($val,$arr['num']);
                if($POST[$arr['name']] != "")
                    {
                        $nameW = $par;
                        // _debug($nameW);
                        // die();
                        $priceW = $POST[$arr['price'].$numEnd];
                        $typeW = $POST[$arr['type'].$numEnd];
                        //Kiểm tra đã tồn tại tên công việc chưa/ chưa thêm->lấy được id của id_jobs
                        $id_Jobs = CreateJobs($db, $nameW);
                        $data = array(
                            'id_job' => $id_Jobs ,
                            'id_news' => $arr['id_news'],
                            'priceMul' => $priceW, 
                            'id_priceMul' => $typeW
                        );
                        CreateNewJobs($db,$data);
                    }
            }
    }
}

//Xử lý thêm news
function CreateNews($db,$new){

    //Xử lý hình ảnh



    return $db->insert('news', $new);
}
//Bài đăng active
function ActiveNews($db, $active)
{
    return $db->insert('active', $active);
}
//Xử lý thêm newJobs
function CreateNewJobs($db, $data){
    return $db->insert('news_job',$data);
}

//Xử lý Đăng tin
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    //id_news
    $id_news = '';
    $errors=array();

    // title
        if(empty($_POST['title'])) { $errors[]='title';} 
        else {$nametitle=$_POST['title']; }
    // end time
        if(empty($_POST['etime'])) { $errors[]='etime'; } 
        else {$date = str_replace('/', '-', $_POST['etime'] ); $Active['end_date'] = date('Y-m-d H:i:s', strtotime($date));}
    // info detail work
        if(empty($_POST['infoWork'])) { $errors[] = 'infoWork';}
        else{ $news['contacts'] = $_POST['infoWork']; }
    // description
        if(empty($_POST['description'])){ $errors[] = 'description';}
        else{ $news['description'] = $_POST['description']; }
    //Check full time 
        if(isset($_POST['fTime']))
        {
            $news['title'] = $nametitle .' - Fulltime' ;
            $news['id_type'] = 3;
            //Tạo bài viết lấy id
            $Active['id_news'] = CreateNews($db,$news);
            ActiveNews($db, $Active);

            $arr = array(
                'name' => 'nameWorkfulltime',
                'price' => 'pricefulltime',
                'type' => 'TypePrfulltime',
                'id_news' => $Active['id_news'],
                'num' => 16
            );  
            //Kiểm tra hình thức làm việc
            checkWorkTime($_POST, $db, $arr);
        }
        if(isset($_POST['pTime']))
        {
            $news['title'] = $nametitle .' - Parttime' ;
            $new['id_type'] = 2;
            $Active['id_news'] = CreateNews($db,$news);
            ActiveNews($db, $Active);

            $arr = array(
                'name' => 'nameWorkfulltime',
                'price' => 'pricefulltime',
                'type' => 'TypePrfulltime',
                'id_news' => $Active['id_news'],
                'num' => 16
            ); 
            //Kiểm tra hình thức làm việc
            checkWorkTime($_POST, $db, $arr);
        }
        if(isset($_POST['oTime']))
        {
            $news['title'] = $nametitle .' - Onetime' ;
            $new['id_type'] = 56;
            $Active['id_news'] = CreateNews($db,$news);
            ActiveNews($db, $Active);

            $arr = array(
                'name' => 'nameWorkfulltime',
                'price' => 'pricefulltime',
                'type' => 'TypePrfulltime',
                'id_news' => $Active['id_news'],
                'num' => 15
            ); 
            //Kiểm tra hình thức làm việc
            checkWorkTime($_POST, $db, $arr);
        }





    









}






