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
            // https://cit.cit/{url} -> controller news
            $explode_url = explode('/', $url);
            $explode_url = array_slice($explode_url, 1);
            if(!isset($explode_url[1])) {
                $request->controller = "news";
                $request->action = $explode_url[0];
                $request->params = [];
            }else {
                //CRUD with R is default index
                //https://cit.cit/{}/CUD/parameter/ || https://cit.cit/{url}/parameter/
                $request->controller = $explode_url[0];

                if(empty($explode_url[2])){
                    $request->action = "index";
                    $request->params = array_slice($explode_url, 1);
                }else{
                    $request->action = $explode_url[1];
                    $request->params = array_slice($explode_url, 2);
                }
               
            }
        }

    }
}
?>