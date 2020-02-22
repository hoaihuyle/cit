<?php

class Router
{

    static public function parse($url, $request)
    {
        $url = trim($url);
        //default index https://cit.cit/
        if ($url == "/"||$url == "/index")
        {
            $request->controller = "news";
            $request->action = "index";
            $request->params = [];
        }
        else
        {
            // https://cit.cit/{url} -> controller is url, action defaut index
            $explode_url = explode('/', $url);
            $explode_url = array_slice($explode_url, 1);
            if(!isset($explode_url[1])) {
                $request->controller =  $explode_url[0];
                $request->action = "index";
                $request->params = [];
            }else {
                //default is index can clear
                //https://cit.cit/{url}/action/parameter/ || https://cit.cit/{url}/parameter/
                $request->controller = $explode_url[0];
                if(is_numeric($explode_url[1])){
                    $request->action = "index";
                    $request->params = array_slice($explode_url, 1);
                }
                else{
                    $request->action = $explode_url[1];
                    $request->params = array_slice($explode_url, 2);
                }               
            }
        }

    }
}
?>