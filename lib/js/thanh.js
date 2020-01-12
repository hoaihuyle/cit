$('document').ready(function(){
    $('.add_work').click(function(){
        // eleMent = $(this).parent().find('.Work_ip');
        input = $('.Work_ip').children().html();
        input1 = '<div class="Work_ip"> <select class="custom-select jobFilter" name="job"> <option selected value="0">Nhập tên công việc</option> ' + input + ' </select> </div>'
        jQuery('.Work_ip').parent().append(input1);
        
        $(".jobFilter").select2({
            theme: 'bootstrap4'
        });
        console.log('Thạnh đẹp trai');
    })

    


});
//****************************************************************************/
//****************************** Thạnh viết **********************************/
//****************************************************************************/

$(document).ready(function(){
    $('#job_ids').change(function(){
        var value = $('#job_ids').val();
        if(value === "") 
            $('#cate_cty').css('display','block')
        else 
            $('#cate_cty').css('display','none')
    });

});




//****************************************************************************/
//***********************************END**************************************/
//****************************************************************************/