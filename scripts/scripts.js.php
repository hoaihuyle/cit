<!-- File called by index.php  -->
<script>
$(document).ready(function(){
    var showModal = '<?php echo $show_modal; ?>';
    if(showModal=="1"){$("#modalLogin").modal("show");}
}); 
// window.history.back();
</script>