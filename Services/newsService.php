<?php 
$db = new Database();
require(ROOT . 'Models/DAO/newsDAO.php');
require(ROOT . 'Models/DAO/jobDAO.php');
require(ROOT . 'Models/DAO/companyDAO.php');
require(ROOT . 'Models/DAO/provinceDAO.php');
class NewsService extends Service{

    public function listNews($db,$listNews){
        $data[]=[];
        $jobs = new JobDAO();
        $companies = new CompanyDAO();
        $provinces = new ProvinceDAO();
        
        $i=0;
        foreach ($listNews as $news){
            $data[$i] = $news;

            $job = null;
            $company = null;
            $province= null;

            if(isset($news['id_job'])){
                $job = $jobs -> fetchID($db, $news['id_job']);
            }
            if(isset($news['id_subcate'])){
                $company = $companies -> fetchID($db, $news['id_subcate']);
            }
            if(isset($news['id_province'])){
                $province = $provinces -> fetchID($db, $news['id_province']);
            }

            $data[$i]['job']=  $job;
            $data[$i]['company']=  $company;
            $data[$i]['province']=  $province;
            $i++;
        }

        return $data;
    }

    /**
     * listNews func
     * List recent News use listNews func
     */
    public function listNewsByUser($db, $id){
        $news = new NewsDAO();
        $listNews =  $news->featchAllNewsByUser($db, $id); 
        return $this -> listNews($db,$listNews);
    }

    /**
     * listNews func
     * List recent News use listNews func
     */
    public function listRecentNews($db, $get, $limit, $offset){
        $news = new NewsDAO();
        $listNews =  $news->fetchCustom($db, $get, $limit, $offset); 
        return $this -> listNews($db,$listNews);
    }

    /**
     * listNews func
     * List all news have count max in top 14
     */
    public function listHotNews($db){

        $news = new NewsDAO();
        $listNews =  $news->fetchsqlTotalWatch($db); 
        return $this -> listNews($db,$listNews);
    }

    /**
     * List all news are activing
     * return list news
     */
    public function listHotNewsActive($db, $limit){
        $news = new NewsDAO();
        $data = [];
        $results_acitve = $news->fetchsqlHotActive($db, $limit);
        $i=0;
	    while($acitve = $results_acitve->fetch_assoc())
	    {
            $end_date = new DateTime($acitve['end_date']);
            $now = new DateTime("now");
            if($end_date > $now && $acitve['state']==1){
                if($i==$limit) break;
                $data[]=$acitve; 
                $i++;
            } 	
        } 
        return $data;
    }

    /**
     * List all news are activing to show sidebar
     */
    // public function listHotNewsActive($db, $limit){
    //     $news = new NewsDAO();
    //     $data = $news->fetchsqlHotActive($db, $this-> listNewsActive($db), $limit);
    //     return $data; 
    // }
   
}

?>