<?php
Class ProvinceDAO{
    
    function listProvince($db){
       return $db->fetchAll('province');
    }
}
?>