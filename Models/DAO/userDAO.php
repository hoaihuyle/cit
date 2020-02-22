<?php
class UserDAO extends Model
{
    
    public function fetchAll($db){
        return $db->fetchAll('users');
    }

    public function fetchID($db,$id){
        return $db->fetchID('users',$id);
    }
 
}
?>