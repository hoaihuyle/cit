<?php
class MenuDAO extends Model
{
    
    public function fetchAll($db){
        return $db->fetchAll('menu');
    }

    public function fetchID($db,$id){
        return $db->fetchID('menu',$id);
    }

    function fetchByColOther($db){
        return $db->fetchByColOther('menu','status','1'); 
    }
 
}
?>