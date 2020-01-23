<?php
Class JobDAO{
    
    function createJob($db,$nameW){
        $check = $db->fetchOne('jobs',"id ='".$nameW."'");
        if($check == null )
        {
            $name['name'] = $nameW;
            return $db->insert("jobs", $name);   
        }
        return $nameW;
    }

    function listJob($db){
       return $db->fetchAll('jobs');
    }
}
?>