$(document).ready(function () {
    $('')
    $('.AddRow button').click(function (e) { 
        e.preventDefault();
        console.log(soldItem = $('.AddRow').siblings()[0].find(''));
        $('.soldItemsRows').append("<tr><td>"+soldItem+"</td><td>"+soldItem+"</td><td>"+soldItemQntt+"</td><td>"+soldItemPrice+"</td></tr>");
    });
    $('.categoryDD select').change(function (e) { 
        e.preventDefault();
        catDDEle = $(this);
        catId = catDDEle.val();
        if (catId){
            $.ajax({
                url: fetchItems,
                data: {
                    'categoryId':catId,
                },
                dataType: "json",
                success: function (response) {
                    itemDD = catDDEle.parent('td').siblings().find("select[name='item']");
                    itemDD.html("<option selected>-------</option>");
                    for(i=0;i<response.items.length;i++){
                        itemDD.append("<option value="+response.items[i].id+">"+response.items[i].item_name+"</option>")
                    }
                }
            });
        }
       
    });
    $('.categoryDD select').change(function (e) {

    });

    // $('.categoryBtn').mouseenter(function () {
    //     var selector = '.parentCategory'+$(this).val().toString();
    //     $('.itemCard').css('display','none');
    //     $(selector).css('display','list-item');;
    //     // var btn = this;
    //     // $.ajax({
    //     //     url: fetchItems,
    //     //     data: {
    //     //         'categoryId':$(btn).val(),
    //     //     },
    //     //     dataType: "json",
    //     //     success: function (response) {
    //     //         $('#itemTable tr').html('');
    //     //         for(i=0;i<response.items.length;i++){
    //     //             $('#itemTable tr').append("<td><button type='button' value="+response.items[i].id+">"+response.items[i].item_name+"</button></td>")
    //     //         }
    //     //     }
    //     // });
    // });
    // // $(document).on('.soldItem_itemQnttInput','change',function () {
    // //     console.log('changed');
        
    // // });
    // $('.itemCard').click(function () { 
    //     item_btn_txt = $(this).find('.card-title').text();
    //     var start = item_btn_txt.lastIndexOf('(');
    //     var end = item_btn_txt.lastIndexOf(')');
    //     var price = "";
    //     for(var i=start+1;i<end;i++){
    //         if (item_btn_txt[i] == 'R'){
    //             break;
    //         }
    //         price = price.concat(item_btn_txt[i].toString());
    //         //console.log(item_btn_txt[i].toString());
    //     }
    //     var alreadyThere = false;
    //     $('.soldItem_itemInput').each(function(){
    //         if($(this).val() == item_btn_txt){
    //             item_qntt = $(this).parent().siblings().find('.soldItem_itemQnttInput');
    //             item_qntt.val(parseInt(item_qntt.val())+1);
    //             item_price = $(this).parent().siblings().find('.soldItem_itemPriceInput');
    //             item_price.val(parseInt(item_qntt.val())*parseInt(price));
    //             alreadyThere = true;
    //             return;
    //         }
    //     });
    //     if(!alreadyThere){
    //         //$('.soldItem_itemInput')
    //         $('#soldItemTbl').append("<tr><td><input class='soldItem_itemInput' value='"+item_btn_txt+"' readonly></td> <td><input class='soldItem_itemQnttInput' type='number' value='1' ></td> <td><input class='soldItem_itemPriceInput' type='number' value="+parseInt(price)+" readonly></td> </tr>");
    //     }
        

    //     // selected_DDs = $("select[name='item'] option:selected"); //selected_DDs , where DDs means dropdowns
        
    //     // selected_DDs.each(function(){
    //     //     if(item_btn_txt == $(this).text()){
    //     //         qntt_input = $(this).parent().parent().siblings().find("input[name='item_quantity']");
    //     //         qntt_input.val(parseInt(qntt_input.val())+1);
    //     //     }
    //     // });
    //     // $("select[name='item'] option").each(function(){
    //     //     if(item_btn_txt == $(this).text()){
    //     //         $(this).attr('selected',true);
    //     //     }
    //     // });
    // });
});