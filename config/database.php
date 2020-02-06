<?php 
    $db = new Database;

    /**
    * 
    */
    class Database
    {
        /**
         * Khai báo biến kết nối
         * @var [type]
         */
        public $link;

        public function __construct()
        {

            // $this->link = mysqli_connect("cit.cit","root","","cit_db") or die ();
            $this->link =  mysqli_connect("localhost","root","","cit_db") or die ();

            mysqli_set_charset($this->link,"utf8");
        }

        /**
         * [insert description] hàm insert 
         * @param  $table
         * @param  array  $data  
         * @return integer
         */
        public function insert($table, array $data)
        {
            //code
            $sql = "INSERT INTO {$table} ";
            $columns = implode(',', array_keys($data));
            $values  = "";
            $sql .= '(' . $columns . ')';
            foreach($data as $field => $value) {
                if(is_string($value)) {
                    $values .= "'". mysqli_real_escape_string($this->link,$value) ."',";
                } else {
                    $values .= mysqli_real_escape_string($this->link,$value) . ',';
                }
            }
            $values = substr($values, 0, -1);
            $sql .= " VALUES (" . $values . ')';

            // _debug($sql);die;

            // _debug($sql);die;

            mysqli_query($this->link, $sql) or die("Lỗi  query  insert ----" .mysqli_error($this->link));
            return mysqli_insert_id($this->link);
        }

        public function update($table, array $data, array $conditions)
        {
            $sql = "UPDATE {$table}";

            $set = " SET ";

            $where = " WHERE ";

            foreach($data as $field => $value) {
                if(is_string($value)) {
                    $set .= $field .'='.'\''. mysqli_real_escape_string($this->link, xss_clean($value)) .'\',';
                } else {
                    $set .= $field .'='. mysqli_real_escape_string($this->link, xss_clean($value)) . ',';
                }
            }

            $set = substr($set, 0, -1);


            foreach($conditions as $field => $value) {
                if(is_string($value)) {
                    $where .= $field .'='.'\''. mysqli_real_escape_string($this->link, xss_clean($value)) .'\' AND ';
                } else {
                    $where .= $field .'='. mysqli_real_escape_string($this->link, xss_clean($value)) . ' AND ';
                }
            }

            $where = substr($where, 0, -5);

            $sql .= $set . $where;
            // _debug($sql);die;

            mysqli_query($this->link, $sql) or die( "Lỗi truy vấn Update -- " .mysqli_error());

            return mysqli_affected_rows($this->link);
        }
        public function updateview($sql)
        {
            $result = mysqli_query($this->link,$sql)  or die ("Lỗi update view " .mysqli_error($this->link));
            return mysqli_affected_rows($this->link);

        }
        public function countTable($table)
        {
            $sql = "SELECT id FROM  {$table}";
            $result = mysqli_query($this->link, $sql) or die("Lỗi Truy Vấn countTable----" .mysqli_error($this->link));
            $num = mysqli_num_rows($result);
            return $num;
        }


        /**
         * [delete description] hàm delete
         * @param  $table      [description]
         * @param  array  $conditions [description]
         * @return integer             [description]
         */
        public function delete ($table ,  $id )
        {
            $sql = "DELETE FROM {$table} WHERE id = $id ";

            mysqli_query($this->link,$sql) or die (" Lỗi Truy Vấn delete   --- " .mysqli_error($this->link));
            return mysqli_affected_rows($this->link);
        }

        /**
         * delete array 
         */
        
        public function deletewhere($table,$data = array())
        {
            foreach ($data as $id)
            {
                $id = intval($id);
                $sql = "DELETE FROM {$table} WHERE id = $id ";
                mysqli_query($this->link,$sql) or die (" Lỗi Truy Vấn delete   --- " .mysqli_error($this->link));
            }
            return true;
        }
        //
    // ==========================FETCH ===========================
        // truy vấn dữ liệu trong bảng - tùy chọn
        public function fetchsql($sql)
        {
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn sql " .mysqli_error($this->link));
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
        }
        
         //lấy toàn bộ dữ liệu của id có trong bảng
         public function fetchByColOther($table , $col, $colval )
         {
            $sql = "SELECT * FROM {$table} as tb WHERE $col != $colval ORDER BY tb.`sort_order` ASC";
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchID " .mysqli_error($this->link));
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
         }
        
        //lấy toàn bộ dữ liệu của id có trong bảng
        public function fetchID($table , $id)
        {
            $sql = "SELECT * FROM {$table} WHERE id = $id ";
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchID " .mysqli_error($this->link));
            return mysqli_fetch_assoc($result);
        }
        /**
         * String query active join between two table
         * read all col in table 1
         * read few col in table 2 throw array parameter
         * return string
         */
        public function queryJoin($tableAll, $tableJoin, $fore, $cols)
        {
            $cols = implode(",tb2.", $cols);
            $sql = "SELECT tb1.*,tb2.".$cols." 
            FROM {$tableAll} as tb1 
            JOIN {$tableJoin} as tb2 
            ON tb1.id = tb2.{$fore} ";

            return $sql;
        }

        /**
         * Extend queryJoin
         * return array 
         * ORDER BY COL
         */
        public function fetchAlltb1Coltb2JoinOrder($tableAll, $tableJoin, $fore, $cols, $order){
           
            $sql = $this -> queryJoin($tableAll, $tableJoin, $fore, $cols);
            $sql.="ORDER BY {$order} DESC";
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchAllTb1JoinWhere " .mysqli_error($this->link).$sql);
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
        }

        //lấy toàn bộ dữ liệu ở 1 bảng có 1 trường ở trong bảng với điều kiện
        public function fetchAllTb1JoinWhere($tableAll, $tableJoin, $fore, $col, $clause)
        {
            $sql = $this -> queryJoin($tableAll, $tableJoin, $fore, $col);
            $sql .= "WHERE {$col} >= {$clause} ";
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchAllTb1JoinWhere " .mysqli_error($this->link).$sql);
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
            
        }

        /**
         * Custom SQL - Variable $state to check posts are activing or not
         */
        public function fetchCustom($get, $limit, $offset){
            $state=1;$job=null; $province=null; $company=null;
            $sql ="SELECT DISTINCT n.id as nid, n.id_type as ntype, n.title, n.description, n.files,n.price, a.timestamp, a.end_date,m.slug, n.contacts 
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
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchAllTb1JoinWhere " .mysqli_error($this->link).$sql);
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
        }
        //kiểm tra dữ liệu tồn tại trong bảng hay chưa??
        public function fetchOne($table , $query)
        {
            $sql  = "SELECT * FROM {$table} WHERE ";
            $sql .= $query;
            $sql .= "LIMIT 1";
            $result = mysqli_query($this->link,$sql) or die("Lỗi  truy vấn fetchOne " .mysqli_error($this->link));
            return mysqli_fetch_assoc($result);
        }

        public function deletesql ($table ,  $sql )
        {
            $sql = "DELETE FROM {$table} WHERE " .$sql;
            // _debug($sql);die;
            mysqli_query($this->link,$sql) or die (" Lỗi Truy Vấn delete   --- " .mysqli_error($this->link));
            return mysqli_affected_rows($this->link);
        }

        
        //lấy dữ liệu từ csdl
         public function fetchAll($table)
        {
            $sql = "SELECT * FROM {$table} WHERE 1" ;
            $result = mysqli_query($this->link,$sql) or die("Lỗi Truy Vấn fetchAll " .mysqli_error($this->link));
            $data = [];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
        }

        //Total là tổng số bản ghi, row số bảng ghi trong 1 trang
        public  function fetchJones($table,$sql,$total = 1,$page,$row ,$pagi = true )
        {
            
            $data = [];

            if ($pagi == true )
            {
                $sotrang = ceil($total / $row);
                $start = ($page - 1 ) * $row ;
                $sql .= " LIMIT $start,$row ";
                $data = [ "page" => $sotrang];
              
               
                $result = mysqli_query($this->link,$sql) or die("Lỗi truy vấn fetchJone ---- " .mysqli_error($this->link));
            }
            else
            {
                $result = mysqli_query($this->link,$sql) or die("Lỗi truy vấn fetchJone ---- " .mysqli_error($this->link));
            }
            
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            
            return $data;
        }

        public  function fetchJone($table,$sql ,$page = 0,$row ,$pagi = false )
        {
            
            $data = [];
            // _debug($sql);die;
            if ($pagi == true )
            {
                $total = $this->countTable($table);
                $sotrang = ceil($total / $row);
                $start = ($page - 1 ) * $row ;
                $sql .= " LIMIT $start,$row";
                $data = [ "page" => $sotrang];
               
                $result = mysqli_query($this->link,$sql) or die("Lỗi truy vấn fetchJone ---- " .mysqli_error($this->link));
            }
            else
            {
                $result = mysqli_query($this->link,$sql) or die("Lỗi truy vấn fetchJone ---- " .mysqli_error($this->link));
            }
            
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            // _debug($data);
            return $data;
        }


        public  function fetchJoneDetail($table , $sql ,$page = 0,$total ,$pagi )
        {
            $result = mysqli_query($this->link,$sql) or die("Lỗi truy vấn fetchJone ---- " .mysqli_error($this->link));

            $sotrang = ceil($total / $pagi);
            $start = ($page - 1 ) * $pagi ;
            $sql .= " LIMIT $start,$pagi";

            $result = mysqli_query($this->link , $sql);
            $data = [];
            $data = [ "page" => $sotrang];
            if( $result)
            {
                while ($num = mysqli_fetch_assoc($result))
                {
                    $data[] = $num;
                }
            }
            return $data;
        }

        public function total($sql)
        {
            $result = mysqli_query($this->link  , $sql);
            $tien = mysqli_fetch_assoc($result);
            return $tien;
        }
    //===========End FETCH
    }
    
   
?>