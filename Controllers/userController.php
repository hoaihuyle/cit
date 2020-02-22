<?php
class UserController extends Controller
{
    var $userService ="Services/userService.php";
    var $newsService ="Services/newsService.php";
    var $index="User/index";
    var $detail="User/detail";

    function index($id)
    {
        require(ROOT . $this->userService);
        require(ROOT . $this->newsService);
        $user = new UserService();
        $news = new NewsService();
        $d['userInfo'] = $user->findUser($db, $id);  
        $d['listNews']  = $news->listNewsByUser($db, $id);  
        $this->set($d);
        $this->render($this->index);
    }

    function detail($id)
    {
        require(ROOT . $this->userService);
        $user = new UserService();
        $d['userInfo'] = $user->findUser($db, $id);  
        $this->set($d);
        $this->render($this->detail);
    }
}
?>