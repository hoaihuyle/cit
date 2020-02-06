<?php 
$db = new Database();
require(ROOT . 'Models/DAO/newsDAO.php');
require(ROOT . 'Models/DAO/jobDAO.php');
require(ROOT . 'Models/DAO/companyDAO.php');
require(ROOT . 'Models/DAO/provinceDAO.php');
class NewsService extends Service{

    public function listNews($db){
        $news = new NewsDAO();
        return $news->fetchAll($db); 
    }

    public function listRecentNews($db, $get, $limit, $offset){
        $data[]=[];

        $news = new NewsDAO();
        $listNews =  $news->fetchCustom($db, $get, $limit, $offset); 
        $jobs = new JobDAO();
        $companies = new CompanyDAO();
        $provinces = new ProvinceDAO();
        
        $i=0;
        foreach ($listNews as $news){
            $data[$i] = $news;

            $job = null;
            $company = null;
            $province= null;

            if($news['id_job']!=null){
                $job = $jobs -> fetchID($db, $news['id_job']);
            }
            if($news['id_subcate']!=null){
                $company = $companies -> fetchID($db, $news['id_subcate']);
            }
            if($news['id_province']!=null){
                $province = $provinces -> fetchID($db, $news['id_province']);
            }

            $data[$i]['job']=  $job;
            $data[$i]['company']=  $company;
            $data[$i]['province']=  $province;
            $i++;
        }

        return $data ;
    }

    /**
     * List all news have count max in top 14
     */
    public function listHotNews($db){
        $data[]=[];

        $news = new NewsDAO();
        $listNews =  $news->fetchAlltb1Coltb2JoinOrder($db); 
        $jobs = new JobDAO();
        $companies = new CompanyDAO();
        $provinces = new ProvinceDAO();
        
        $i=0;
        foreach ($listNews as $news){
            $data[$i] = $news;

            $job = null;
            $company = null;
            $province= null;

            if($news['id_job']!=null){
                $job = $jobs -> fetchID($db, $news['id_job']);
            }
            if($news['id_subcate']!=null){
                $company = $companies -> fetchID($db, $news['id_subcate']);
            }
            if($news['id_province']!=null){
                $province = $provinces -> fetchID($db, $news['id_province']);
            }

            $data[$i]['job']=  $job;
            $data[$i]['company']=  $company;
            $data[$i]['province']=  $province;
            $i++;
        }

        return $data ;
    }
   
}

?>