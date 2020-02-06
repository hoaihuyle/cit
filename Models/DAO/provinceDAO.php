<?php
class provinceDAO extends Model
{
    
    public function fetchAll($db){
        return $db->fetchAll('province');
    }

    public function fetchID($db,$id){
        return $db->fetchID('province',$id);
    }

    function fetchByColOther($db){
        return $db->fetchByColOther('province','status','1'); 
    }
 
}
?>