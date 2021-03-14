$(document).ready(function () {
    //hide save and keep editing
    sbmt_row = $('.submit-row');
    
    if (sbmt_row.length != 0){
        $(".submit-row input[name='_continue']").css('display','None');
        $('#content form').append("<div class='submit-row draggedMeDown' style='padding: 0px;'>"+sbmt_row.html()+"</div>");
        $(".submit-row:not('.draggedMeDown')").remove();
    }
});