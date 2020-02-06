<?php
class CompanyDAO extends Model
{
    
    public function fetchAll($db){
        return $db->fetchAll('companies');
    }

    public function fetchID($db,$id){
        return $db->fetchID('companies',$id);
    }

    function fetchByColOther($db){
        return $db->fetchByColOther('companies','status','1'); 
    }
 
}
?>