<?php
Class NewsDAO{
    function listNews($db){
       return $db->fetchAll('news');
    }

    function listNewsActive($db){
        return $db ->fetchAllTb1JoinWhere('news', 'active', 'id_news','end_date', 'NOW()');
    }

    function listNewsActiveCust($db, $get, $limit, $offset){
        return $db -> fetchCustom($get, $limit, $offset);
    }
}
?>