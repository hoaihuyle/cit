<?php 
$db = new Database();
require(ROOT . 'Models/DAO/menuDAO.php');
class MenuService extends Service{

    function listMenuByParent($db){
       
        $menu = new MenuDAO();
       
        $dataPa=[];
        $dataChil=[];
        
        $data[]=[];
        $menus =  $menu->fetchByColOther($db); 
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