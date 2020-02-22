<?php 
$db = new Database();
require(ROOT . 'Models/DAO/userDAO.php');
class UserService extends Service{

    public function findUser($db, $id){
        $users = new UserDAO();
        return $users -> fetchID($db, $id);
    }

}
?>