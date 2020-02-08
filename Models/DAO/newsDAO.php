<?php

$db = new Database();

class NewsDAO extends Model
{
    // public function create($title, $description)
    // {
    //     $sql = "INSERT INTO news (title, description, created_at, updated_at) VALUES (:title, :description, :created_at, :updated_at)";

    //     $req = Database::getBdd()->prepare($sql);

    //     return $req->execute([
    //         'title' => $title,
    //         'description' => $description,
    //         'created_at' => date('Y-m-d H:i:s'),
    //         'updated_at' => date('Y-m-d H:i:s')

    //     ]);
    // }

    // public function showNews($id)
    // {
    //     // $sql = "SELECT * FROM tasks WHERE id =" . $id;
    //     // $req = Database::getBdd()->prepare($sql);
    //     // $req->execute();
    //     // return $req->fetch();
    //     return null;
    // }

    public function fetchAll($db){
        return $db->fetchAll('news');
    }

    /**
     * get all table1 JOIN table2 with a order in a column
     */
    public function fetchAlltb1Coltb2JoinOrder($db){
        $cols = array("count", "end_date");
        return $db ->fetchAlltb1Coltb2JoinOrder('news', 'active', 'id_news', $cols,'count');
    }
    
    /**
     * get all table1 JOIN table2 with a condition
     */
    public function fetchAllTb1JoinWhere($db){
        return $db ->fetchAllTb1JoinWhere('news', 'active', 'id_news','end_date', 'NOW()');
    }
 
    /**
     * Query include search and list-job
     */
    public function fetchCustom($db, $get, $limit, $offset){
        $state=1;$job=null; $province=null; $company=null;
        $sql ="SELECT DISTINCT n.*, a.timestamp, a.end_date, m.slug 
            FROM news as n 
            JOIN active as a ON a.id_news=n.id 
            LEFT JOIN type_post as tp ON n.id_type=tp.id 
            LEFT JOIN menu as m ON m.id= tp.menu_id ";

        if($get!='all') $str_q=" m.slug ='$get' AND ";
        else $str_q=" ";
        // m.slug IN ('one-time','fulltime','parttime')

        if(isset($_GET['job'])&&isset($_GET['province'])&&isset($_GET['company']) && isset($_GET['search'])){

            $job = $_GET['job'];
            $province = $_GET['province'];
            $company = $_GET['company'];
            $search=$_GET['search'];

            $query = $sql." 
            LEFT JOIN jobs as j
            ON n.id_job= j.id 
            LEFT JOIN province as p
            on n.id_province= p.id
            LEFT JOIN companies as c
            on n.id_subcate= c.id WHERE ". $str_q;
            //Do real escaping here

            $conditions = array();
        
            if($job!=0 && $job !=null) {
            $conditions[] = "id_job='$job'";
            }
            if($province!=0 && $province !=null) {
            $conditions[] = "id_province='$province'";
            }
            if($company!=0 && $company !=null) {
            $conditions[] = "id_subcate='$company'";
            }
            // if($state==1){
            //     $str=implode(',',list_post_activing());
            //     $conditions[]="n.id IN ($str)";
            // }
            // if($state==2)
            // {
            //     $str=implode(',',list_post_activing());
            //     $conditions[]="n.id NOT IN ($str)";
            // }
            if($search!="null")
            {
                $conditions[]="title LIKE '%$search%'";
            }
            $sql = $query;
            if (count($conditions) > 0) {
            $sql .= implode(' AND ', $conditions);
            }
        }else{
            if($get!='all') $str_q=" WHERE m.slug ='$get' AND";
            else $str_q=" WHERE ";

            if(isset($limit)) $limit = " LIMIT ".$limit;
            if(isset($offset)) $limit .= " OFFSET ".$offset;

            $sql =$sql.$str_q." a.end_date > DATE(CURDATE()) AND a.state = 1 AND a.end_date = (SELECT MAX(end_date) FROM `active` WHERE id_news = a.id_news ) ORDER BY a.modified DESC,n.id DESC ".$limit; 
        }
        return $db -> fetchsql($sql);
    }

    /**
     * List all news are activing
     */
    public function fetchsqlActive($db){
        $sql="SELECT * FROM active";
        return $db ->fetchsqlConn($sql);
    }

     /**
     * List all news are activing to show sidebar
     */
    public function fetchsqlHotActive($db, $list, $limit){
        $sql="SELECT n.*, `count` 
		FROM news as n JOIN active as a ON n.id = a.id_news 
        WHERE n.id IN (".implode(',',$list).") ORDER BY count DESC LIMIT ".$limit;
        return $db ->fetchsql($sql);
       
    }

    // public function edit($id, $title, $description)
    // {
    //     $sql = "UPDATE news SET title = :title, description = :description , updated_at = :updated_at WHERE id = :id";

    //     $req = Database::getBdd()->prepare($sql);

    //     return $req->execute([
    //         'id' => $id,
    //         'title' => $title,
    //         'description' => $description,
    //         'updated_at' => date('Y-m-d H:i:s')

    //     ]);
    // }

    // public function delete($id)
    // {
    //     $sql = 'DELETE FROM news WHERE id = ?';
    //     $req = Database::getBdd()->prepare($sql);
    //     return $req->execute([$id]);
    // }
}
?>