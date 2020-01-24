<?php

    class Controller
    {
        var $vars = [];
        var $layout = "default";
        var $layout_header ="includes/layout_header";

        function __construct(){
            // require(ROOT . 'Models/DAO/menuDAO.php');
            // $menu = new MenuDAO();
            require(ROOT . 'Services/menuService.php');
            $menu = new MenuService();
            $d['menu'] = $menu->listMenuByParent($db);  
            $this->set($d);
        }

        /**
         * return array data in model and set value to variable $var
         *  */    
        function set($d)
        {
            $this->vars = array_merge($this->vars, $d);
        }

        /**
         * $filename -> name file In Views by del 'Controller' 
         * render HTML. Value saved in $vars will show to View
         */
        function render($filename)
        {
            extract($this->vars);

            ob_start();
            // require(ROOT . "Views/" . ucfirst(str_replace('Controller', '', get_class($this))) . '/' . $filename . '.php');
            require(ROOT . "Views/" . $filename . '.php');
            // echo(ROOT . "Views/" .ucfirst(str_replace('Controller', '', get_class($this))) . '/' . $filename . '.php');
            //C:/xampp/htdocs/cit/Views/News/index.php
            $content_for_layout = ob_get_clean();

            ob_start();
            require(ROOT . "Views/includes/_menu.php");
            $content_for_Menu = ob_get_clean();

            if ($this->layout == false||$this->layout_header == false)
            {
                if($this->layout == false)
                $content_for_layout;
                if($this->layout_header == false)
                $content_for_Menu;
            }
            else
            {
                require(ROOT . "Views/" . $this->layout_header . '.php');
                require(ROOT . "Views/" . $this->layout . '.php');
            }
        }

        private function secure_input($data)
        {
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
        }

        protected function secure_form($form)
        {
            foreach ($form as $key => $value)
            {
                $form[$key] = $this->secure_input($value);
            }
        }

    }
?>