<?php 
$db = new Database();
class MenuService extends Service{
    function fetchAll($db){
        require(ROOT . 'Models/DAO/menuDAO.php');
        $menu = new MenuDAO();
        return $menu->fetchAll($db); 
    }
    function fetchByColOther($db){
        require(ROOT . 'Models/DAO/menuDAO.php');
        $menu = new MenuDAO();
        return $menu->fetchByColOther($db); 
    }
    function listMenuByParent($db){
        $dataPa=[];
        $dataChil=[];
        
        $data[]=[];
        $menus = $this->fetchByColOther($db);
        $i=0; 

        foreach ($menus as $menu){
            if($menu['parent']==0){
               $dataPa[] = $menu;
            }
            else{
                $dataChil[] = $menu;
            }          
            $i++;
        }
        $i=0;
        foreach($dataPa as $pa){
            $data[$i] = $pa;
            $arr=[];
            foreach($dataChil as $child){
                if($pa['id']==$child['parent'])
                $arr[] = $child;
            }
            $data[$i]['child']=$arr;
            $i++;
        }

        // foreach($data as $x){
        //     // if($x['child']!){
        //     echo'<pre>';
        //     var_dump($x['child']);
        //     echo'</pre>';
        //     if($x['child']==null) echo 'null';
        //     // }
        // }
        // die();
        return $data;
    }   
}

?>