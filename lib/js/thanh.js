$('document').ready(function(){
    //Add click work full/part/one
    $('.add_work').click(function(){
            input = $('.Work_ip').children().html();
            input1 = ' <div class="ct_father row"><div class="col-md-4"> <div class="Work_ip"> <select class="custom-select jobFilter" name="job"> <option selected value="0">Nhập tên công việc</option> ' + input + ' </select> </div> </div><div class="col-md-1"><div class="icheck-material-indigo Work_per"><input type="checkbox" checked id="thoathuan" /><label for="thoathuan"></label></div></div> <div class="col-md-6"> <div class="cate_per"><input type="number" class="form-control" style="width: 50%" placeholder="100,000"><select class="form-control" style="width: 45%" name="" id=""><option value="">VND/Giờ</option> </select></div></div> <div class="col-md-1 del_work"><a id="add_btn_work"><img src="/admin/images/close.svg" alt=""> </a></div></div>'
                var quatati = $(this).parent().find('.ct_father').length;
                console.log(quatati);
                if(quatati < 3){
                    $(this).parent().find('.ct_work').append(input1);
                    $(".jobFilter").select2({
                        theme: 'bootstrap4'
                    });
                }
                if(quatati == 2) {
                    $(this).hide();
                }
                
    })

    //del click work full/part/one
    $('.del_work').click(function(){
        $(this).parent().remove();
        
    });

    // fulltime
    $('#lbfull').change(function(){
        if($('#chb1').is(':checked')){
            $('#fulltime').css('display','block')
            $(".jobFilter").select2({
                theme: 'bootstrap4'
            });
        }
        else{
            $('#fulltime').css('display','none')
        }
    });
    // partime
    $('#lbpart').change(function(){
        if($('#chb2').is(':checked')){
            $('#parttime').css('display','block')
            $(".jobFilter").select2({
                theme: 'bootstrap4'
            });
        }
        else{
            $('#parttime').css('display','none')
        }
    });
    // onetime
    $('#lbone').change(function(){
        if($('#chb3').is(':checked')){
            $('#onetime').css('display','block')
            $(".jobFilter").select2({
                theme: 'bootstrap4'
            });
        }
        else{
            $('#onetime').css('display','none')
        }
    });


    


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