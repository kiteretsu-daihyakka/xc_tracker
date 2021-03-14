$(document).ready(function () {
    // $('body').click(function(){
    //     alert();
    // });
    // $('.object-tools .addlink').css('display','None');
    
    $("<button class='btn pls-btn' type='button'>+</button> ").insertBefore(".field-item_quantity input");
    $(".field-item_quantity").append(" <button class='btn minus-btn' type='button'>-</button>");
    $('.pls-btn').click(function () {
        if($(this).siblings('input').val() != NaN){
            $(this).siblings('input').val(parseInt($(this).siblings('input').val())+1);
            $(this).siblings('input').keydown();
        }
    });
    $('.minus-btn').click(function () {
        if($(this).siblings('input').val() != ''){
            $(this).siblings('input').val(parseInt($(this).siblings('input').val())-1);
            $(this).siblings('input').keydown();
        } 
    });
    //baaki..
    // $("select.admin-autocomplete span").click(function(){
    //     alert();
    // });
    $("input[type='number']:not('#id_total_amount')").keydown(function (e) {
        if(e.key == "ArrowDown"){
            if ($(this).val() == ''){
                $(this).val(0);
            }
            e.preventDefault();
            $(this).val(parseInt($(this).val())+1);
        }else if(e.key == "ArrowUp"){
            if ($(this).val() == ''){
                $(this).val(0);
            }
            e.preventDefault();
            $(this).val(parseInt($(this).val())-1);
        }
        if(parseInt($(this).val()) < 1){
            $(this).parent().find("ul").remove();
            $(this).parent().append("<ul class='errorlist'><li>Enter atleast 1 quantity.</li></ul>");
        }else{
            $(this).parent().find("ul").remove();
        }
        $(this).change();
    });
    // $("input[type='number']:not('#id_total_amount')").blur(function () { 
    //     if(parseInt($(this).val()) < 1){
    //         $(this).parent().append("<ul class='errorlist'><li>Value should be bigger than 0.</li></ul>");
    //     }
    // });
    // $("input[type='number']").focus(function () {
    //     $(this).parent().find("ul").remove();
    // });
    // $('form').keypress(function (e) { 
    //     if(e.key == "Enter"){
    //         e.preventDefault();
    //     }
    // });
    $('form').submit(function (e) {
        // $("input[type='number']").each(function(ele){
        //     console.log($(ele).attr('required'));
        //     // if(ele.attr('required') && ele.val() == 0 ){
        //     //     $(this).parent().append("<ul class='errorlist'><li>Value should be bigger than 0.</li></ul>");
        //     // }
        // })
        // e.preventDefault();
        // if(e.key == "Enter"){
        //     e.preventDefault();
        // }// }else{
            
        // // }
        // $("input[type='number']").each(function(ele){
        //     console.log($(ele).attr('required'));
        //     // if(ele.attr('required') && ele.val() == 0 ){
        //     //     $(this).parent().append("<ul class='errorlist'><li>Value should be bigger than 0.</li></ul>");
        //     // }
        // })
        // e.preventDefault();
        if($('.errorlist').length > 0 ){
            e.preventDefault();
        }

    })
});