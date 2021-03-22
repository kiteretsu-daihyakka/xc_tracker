$(document).ready(function () {
    $(document).on('change','.field-item-cat select',function () { 
		catDDEle = $(this);
        catId = catDDEle.val();
		itemDD = catDDEle.parent('td').siblings('.field-item').find("select");
		itemDD.html("<option></option>");
        if (catId){
            $.ajax({
                url: fetchItems,
                data: {
                    'categoryId':catId,
                    'fromPurchase':0,
                },
                dataType: "json",
                success: function (response) {
                    for(i=0;i<response.items.length;i++){
                        itemDD.append("<option value="+response.items[i].id+">"+response.items[i].item_name+"</option>")
                    }
					itemDD.attr('required',true);
					// itemDD.change();
					// itemDD.focus();
					$(itemDD).trigger('click');
                }
            });
        }
		
	});
});