<?php 
// Load the database configuration file
require_once '../admin/inc/myconnect.php';
require_once '../admin/inc/function.php'; 
if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $checkIns=false;
        $checkUp=false;
        //Convert JSON data into PHP variable
        if( isset($_POST["nid"]) && isset($_POST["aid"]) ){
                $nid = $_POST['nid'];
                $aid = $_POST['aid'];
                $activeid = return_active_news($nid)['aid'];
                if(!is_null($activeid)){
                        //Insert user data
                        $query = "INSERT INTO applies (id_active, id_app) VALUES('". $activeid ."','". $aid ."')";
                        $insert=mysqli_query($dbc,$query);
                        if($insert){
                                $checkIns=true;
                                $count=displat_totalapp($aid);
                                $queryupdate = "UPDATE applicant SET totalapp = ".$count." WHERE id = ".$aid;
                                $update=mysqli_query($dbc,$queryupdate);
                                if($update) $checkUp=true;
                        }
                }
                if($checkUp && $checkIns){
                        $query = "SELECT a.`id` as aid, a.`fullname` as afullname, a.`picture` as apicture, a.`phone` as aphone, u.email, IF(u.gender,'Nam','Nữ') as sex, u.birthday 
                                FROM applicant as a
                                JOIN users as u ON a.id = u.id_app 
                                WHERE a.id = $aid";
                        $result_query_arr = mysqli_query($dbc,$query) or die(mysqli_error($dbc));
                        while ($element_arr =  mysqli_fetch_object($result_query_arr)){
                                $appArr= (array)$element_arr;    
                        }

                        $query = "SELECT e.`id` as eid, e.`fullname` as efullname, e.`phone` as ephone, ue.`email` as ueemail
                                FROM active AS ac
                                JOIN postsed as p ON p.id_active = ac.id
                                JOIN employers as e ON e.id = p.id_em
                                JOIN users as ue ON ue.id_em = e.id 
                                WHERE ac.id= $activeid";

                        $result_query_arr = mysqli_query($dbc,$query) or die(mysqli_error($dbc));
                        $empArr=null;
                        while ($element_arr =  mysqli_fetch_object($result_query_arr)){
                                $empArr= (array)$element_arr;    
                        }

                        $compArr=null;
                        $query = "SELECT  n.title, ac.end_date, c.name 
                        FROM active AS ac 
                        LEFT JOIN news as n ON n.id = ac.id_news 
                        LEFT JOIN companies as c ON c.id = n.id_subcate 
                        WHERE ac.id= $activeid";

                        $result_query_arr = mysqli_query($dbc,$query) or die(mysqli_error($dbc));
                        while ($element_arr =  mysqli_fetch_object($result_query_arr)){
                                $compArr= (array)$element_arr;    
                        }
                        
                }
                       
        }
$result = array(
        'insert' => $checkIns,
        'update' => $checkUp,
        'appArr'=> $appArr,
        'empArr'=> $empArr,
        'compArr'=>$compArr
);
header('Content-type: application/json');
echo json_encode($result);
}

?>