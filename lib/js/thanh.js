//****************************************************************************/
//****************************** Thạnh viết **********************************/
//****************************************************************************/
$('document').ready(function(){
    //Add click work full/part/one
    $('.add_work').click(function(){
            var quatati = $(this).parent().find('.ct_father').length;
            input = $('.Work_ip').children().html();
            type = $('.cate_per select').html();
            name =  $(this).parent().attr('id');
            string = "Tên công việc không được để trống";
            str = "";
            input1 = '<div class="ct_father row"><div class="col-md-5"> <div class="Work_ip"> <select required oninvalid="this.setCustomValidity('+ string +')"  onchange="this.setCustomValidity('+str+')" class="form-control js-example-tags" name="nameWork'+name+ quatati+'">' + input + ' </select> </div> </div> <div class="col-md-6"> <div class="cate_per"><input type="number" class="form-control" style="width: 50%" placeholder="100,000" name="price'+name+ quatati +'"><select class="form-control" style="width: 45%" id="" name="TypePr'+ name + quatati +'"> ' + type + ' </select></div></div> <div class="col-md-1 del_work"><a><img src="/admin/images/close.svg" alt=""> </a></div></div>'
                if(quatati < 3){
                    $(this).parent().find('.ct_work').append(input1);            
                    $('.ct_work .ct_father').find('.del_work').css('display','block')
                    // Select2 input when choose other
                    $(".js-example-tags").select2({
                        tags: true
                    });
                }
                if(quatati == 2) {
                    $(this).hide();
                }
                
    });

    //del click work full/part/one
    $('.right').on('click','.ct_work .ct_father .del_work',function(){
        var quatati = $(this).parents().children('.ct_father').length;
        if(quatati <= 3 && quatati >1)
        {
            $('.add_work').show();
            $(this).parent().remove();
        }
        if(quatati == 1){
            alert('Mặc định công việc không được dưới 1');
        }
        
    });
    // fulltime
    $('#lbfull').change(function(){
        if($('#chb1').is(':checked')){
            $('#fulltime').css('display','block')
            // Select2 input when choose other
            $(".js-example-tags").select2({
                tags: true
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
                // Select2 input when choose other
                $(".js-example-tags").select2({
                    tags: true
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
                // Select2 input when choose other
                $(".js-example-tags").select2({
                    tags: true
                });
                }
            else{
                $('#onetime').css('display','none')
            }
    });
    // Select2 input when choose other
    $(".js-example-tags").select2({
        tags: true
    });


    $('#job_ids').change(function(){
        var value = $('#job_ids').val();
        if(value === "") 
            $('#cate_cty').css('display','block')
        else 
            $('#cate_cty').css('display','none')
    });

    // Scroll gõ phím

    $('#title').on('keyup',function(){
        CKEDITOR.instances['noidung2'].setData($(this).val())
    });
    $('#noidung').on('keyup',function(){
        $('#infoWork').val($(this).val());
    });
    
    // button upload image
    $("#files").change(function() {
        filename = this.files[0].name
        $('#nameimg').html(filename)
      });
    
});

//****************************************************************************/
//***********************************END**************************************/
//****************************************************************************/