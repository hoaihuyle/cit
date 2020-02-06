<?php
class NewsController extends Controller
{
    function index(){
        require(ROOT . 'Services/newsService.php');
        $news = new NewsService();
        
        $d['newsHot'] = $news->listHotNews($db);  
        $d['newsRecents'] = $news->listRecentNews($db, $get, $limit, $offset);
        $this->set($d);

        $this->render("News/index");
    }

    function all(){
        $this -> index();
    }

    // function create()
    // {
    //     if (isset($_POST["title"]))
    //     {
    //         require(ROOT . 'Models/DAO/NewsDAO.php');

    //         $news= new News();

    //         if ($news->create($_POST["title"], $_POST["description"]))
    //         {
    //             header("Location: " . WEBROOT . "news/index");
    //         }
    //     }

    //     $this->render("create");
    // }

    // function edit($id)
    // {
    //     require(ROOT . 'Models/DAO/NewsDAO.php');
    //     $news= new News();

    //     $d["news"] = $news->showNews($id);

    //     if (isset($_POST["title"]))
    //     {
    //         if ($news->edit($id, $_POST["title"], $_POST["description"]))
    //         {
    //             header("Location: " . WEBROOT . "news/index");
    //         }
    //     }
    //     $this->set($d);
    //     $this->render("edit");
    // }

    // function delete($id)
    // {
    //     require(ROOT . 'Models/DAO/NewsDAO.php');

    //     $news = new News();
    //     if ($news->delete($id))
    //     {
    //         header("Location: " . WEBROOT . "news/index");
    //     }
    // }
}
?>