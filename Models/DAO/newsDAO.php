<?php

$db = new Database();

class NewsDAO extends Model
{
    // public function create($title, $description)
    // {
    //     $sql = "INSERT INTO news (title, description, created_at, updated_at) VALUES (:title, :description, :created_at, :updated_at)";

    //     $req = Database::getBdd()->prepare($sql);

    //     return $req->execute([
    //         'title' => $title,
    //         'description' => $description,
    //         'created_at' => date('Y-m-d H:i:s'),
    //         'updated_at' => date('Y-m-d H:i:s')

    //     ]);
    // }

    // public function showNews($id)
    // {
    //     // $sql = "SELECT * FROM tasks WHERE id =" . $id;
    //     // $req = Database::getBdd()->prepare($sql);
    //     // $req->execute();
    //     // return $req->fetch();
    //     return null;
    // }

    public function listNews($db){
        return $db->fetchAll('news');
     }
 
    public function listNewsActive($db){
         return $db ->fetchAllTb1JoinWhere('news', 'active', 'id_news','end_date', 'NOW()');
     }
 
    public function listNewsActiveCust($db, $get, $limit, $offset){
         return $db -> fetchCustom($get, $limit, $offset);
     }

    // public function edit($id, $title, $description)
    // {
    //     $sql = "UPDATE news SET title = :title, description = :description , updated_at = :updated_at WHERE id = :id";

    //     $req = Database::getBdd()->prepare($sql);

    //     return $req->execute([
    //         'id' => $id,
    //         'title' => $title,
    //         'description' => $description,
    //         'updated_at' => date('Y-m-d H:i:s')

    //     ]);
    // }

    // public function delete($id)
    // {
    //     $sql = 'DELETE FROM news WHERE id = ?';
    //     $req = Database::getBdd()->prepare($sql);
    //     return $req->execute([$id]);
    // }
}
?>