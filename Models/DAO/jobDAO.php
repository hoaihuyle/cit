<?php
class JobDAO extends Model
{
    
    public function fetchAll($db){
        return $db->fetchAll('jobs');
    }

    public function fetchID($db,$id){
        return $db->fetchID('jobs',$id);
    }

    public function fetchByColOther($db){
        return $db->fetchByColOther('jobs','status','1'); 
    }
 
}
?>