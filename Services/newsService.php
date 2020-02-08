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
        $listNews =  $news->fetchAlltb1Coltb2JoinOrder($db); 
        return $this -> listNews($db,$listNews);
    }

    /**
     * List all news are activing
     * return array list 
     */
    public function listNewsActive($db){
        $news = new NewsDAO();
        $list=array();
        $results_acitve = $news->fetchsqlActive($db);
	    while($acitve = $results_acitve->fetch_assoc())
	    {
            $end_date = new DateTime($acitve['end_date']);
            $now = new DateTime("now");
            if($end_date > $now && $acitve['state']==1) $arr[]=$acitve['id_news']; 		
        }
	    if(isset($arr))
	    {
	    	foreach ($arr as $key) {
	    	# code...
	    	if(!in_array($key,$list))
	    		$list[]=$key;
            }
           
		    return $list;
	    }
	    else
            return null;
            
        
    }

    /**
     * List all news are activing to show sidebar
     */
    public function listHotNewsActive($db, $limit){
        $news = new NewsDAO();
        $data = $news->fetchsqlHotActive($db, $this-> listNewsActive($db), $limit);
        return $data; 
    }
   
}

?>