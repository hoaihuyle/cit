<?php

echo $content_for_layout;

include('includes/layout_footer.php');

$show_modal="";
if(isset($_SESSION["user"])){$show_modal="0";}else{$show_modal="1";}
include(ROOT."/scripts/scripts.js.php");
 
?>


