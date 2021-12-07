<?php 
    require("../admin/inc/database.php");
    require("../admin/inc/function.php");
    class Service
    {   
        private $_db;
        function __construct(){
            $this -> _db = new Database();
        }

        //Create new News/Post and return Id and hrefLink
        function createNewPosts($data_arr){ 
            $id_province = null;
            switch ($data_arr['location']) {
                case 'Thừa Thiên - Huế':
                    $id_province = 49;
                    break;
                case 'Thừa Thiên- Huế':
                    $id_province = 49;
                    break;
                case 'Thừa Thiên -Huế':
                    $id_province = 49;
                    break;
                case 'Huế':
                    $id_province = 49;
                    break;
                case 'Hồ Chí Minh':
                    $id_province = 24;
                    break;
                case 'Đà Nẵng':
                    $id_province = 501;
                    break;
                default:
                    $id_province ='null';
                    break;
            }
            try {
                $id_subcate = $this -> checkIsCompanyExist($data_arr['company']);
                // $id_type = $this -> checkIsTypeJobExist($data_arr['job_type']);
                $data_arr_new = array(
                    'title' => $data_arr['title'],
                    'id_type' => 3, // tạm thời set cứng fulltime - 3
                    'id_province' => $id_province,
                    'id_subcate' => $id_subcate,
                    'description' => $data_arr['description_html'],
                    'contacts' => $data_arr['contact']
                );
                
                //Saving news into DB
                $id_news = $this -> _db -> insert('news', $data_arr_new);
                if(isset($id_news)){
                    $result = array(
                        'id_news' => $id_news,
                        'cit_href' => $_SERVER['SERVER_NAME'].display_href_article_link($id_news, $data_arr['title'])
                    );

                    //Active News after saved on DB
                    $end_date = convertFormatTime($data_arr['date_end']);
                    $active_arr= array('id_news'=> $id_news,'end_date' => $end_date);
                    if(!$this -> activeNewPost($active_arr))
                        array_push($result,'Kích hoạt thất bại, liên hệ Admin CIT để kích hoạt lại !!!');
                    
                    return $result;
                }
                else return 'Insert fail, try again!!!';

                


            } catch (\Throwable $th) {
               return $th;
            }
        }

        //Create new Company, check if hasn't exist -> createNew
        function checkIsCompanyExist($companyName){
            $result =  $this -> _db -> fetchOne("companies","name="."'".$companyName."'");
            if($result == NULL){
                //create new Company
                return $this -> _db -> insert("companies",array('name'=>$companyName));
            }else{
                return $result['id'];
            }
        }

        //Add the date active of new post into Active table
        function activeNewPost($data_arr){
            $id = $this->_db->insert('active', $data_arr);
            if(isset($id)) return TRUE;
            return FALSE;
        }
        

    }
?>