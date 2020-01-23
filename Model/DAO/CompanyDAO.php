<?php
Class CompanyDAO{

    function listCompany($db){
       return $db->fetchAll('companies');
    }
}
?>