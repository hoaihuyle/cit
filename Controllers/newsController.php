<?php
class NewsController extends Controller
{
    var $service ="Services/newsService.php";
    var $LIMIT_SIDEBAR=7;
    var $LIMIT = 7;
    var $index="News/index";
    var $template="_list-job";

    function index(){
        require(ROOT . $this->service);
        $news = new NewsService();
        
        $d['newsHot'] = $news->listHotNews($db);  
        $d['newsRecents'] = $news->listRecentNews($db, 'all', $this->LIMIT, 0);
        $d['newsSideBar'] = $news->listHotNewsActive($db, $this->LIMIT_SIDEBAR);
        $this->set($d);

        $this->render($this->index);
    }

    function all(){
        $this -> templateList(__FUNCTION__);
    }

    function fulltime(){
        $this -> templateList(__FUNCTION__);
    }

    function parttime(){
        $this -> templateList(__FUNCTION__);
    }

    function onetime(){
        $this -> templateList(__FUNCTION__);
    }

    function templateList($get){
        require(ROOT . $this->service);
        $news = new NewsService();
        $d['newsRecents'] = $news->listRecentNews($db, $get, $this->LIMIT*2, 0);
        $d['newsSideBar'] = $news->listHotNewsActive($db, $this->LIMIT_SIDEBAR);
        $this->set($d);
        $this->render($this->template);
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