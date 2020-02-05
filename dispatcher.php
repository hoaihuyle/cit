<?php

class Dispatcher
{

    private $request;

    /**
     * Access Controller to use method in it
     */
    public function dispatch()
    {
        $this->request = new Request();
        Router::parse($this->request->url, $this->request);
        $controller = $this->loadController();
        //["url"]=> string(5) "/MVC/" 
        //["controller"]=> string(5) "news" 
        //["action"]=> string(5) "index" 
        //["params"]=> array(0) { }
        call_user_func_array([$controller, $this->request->action], $this->request->params);
       
    }

    /**
     * Get Controller Object 
     */
    public function loadController()
    {
        $name = $this->request->controller . "Controller";

        $file = ROOT . 'Controllers/' . $name . '.php';

        require($file);

        $controller = new $name();

        return $controller;
    }

}
?>