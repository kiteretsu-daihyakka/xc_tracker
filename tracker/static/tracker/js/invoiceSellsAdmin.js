$(document).ready(function(){
	//$("input[type='number']").attr('min',0);
	// $('.field-item').parent().append("<td>"+$('#categoriesDD').html()+"</td>");
	
	// $("input[type='number']:not('#id_mobile')").attr('readonly',true);
	
	$('.form-row.field-odr_id').css('display','None');
	if($('.form-row.field-discount_note').val()!='' || $('.form-row.field-discount_note').val()!=NaN){
		$('.form-row.field-discount_note').css('display','None');
	}
	$(document).on('change','.field-payment_mode select',function(){
		// alert();
		if($(this).find('option:selected').text() == 'SWIGGY'){
			// alert();
			$('.form-row.field-odr_id').css('display','block');
		}else{
			$('.form-row.field-odr_id').css('display','None');
		}
	});
	$(document).on('change','#id_discount',function () {
		alert();
		if(parseInt($(this).val())>0){
			$('.form-row.field-discount_note').css('display','block');
		}
		else{
			$('.form-row.field-discount_note').css('display','None');
		}
		
	});
	$("<td class='field-item-cat'>"+$('.categoriesDD').html()+"</td>").insertBefore(".original:not(th)");
	$('.categoriesDD').html('');
	$("<th class='required'>Category</th>").insertBefore('.inline-related thead th:first');

	$('#solditem_set-group,#purchaseditem_set-group').parent().append("<div class='draggedDownTotal'><fieldset></fieldset></div>");
	$('.draggedDownTotal fieldset').html($('#solditem_set-group,#purchaseditem_set-group').siblings('fieldset:last').html());
	$('.draggedDownTotal fieldset').addClass('module');
	$('#solditem_set-group,#purchaseditem_set-group').siblings('fieldset:last').html('');
	// $('.submit-row').hide();
	//var dashes = "---------";
	if ($('#content h1').html() == 'Add Sell' || $('#content h1').html() == 'Add Purchase'){
		$('.field-item select').html("<option></option>");
	}
	
	// $('#id_payment_mode').prop('disabled',true);
	// $('#id_payment_mode').css('cursor','not-allowed');
	// $('#id_status').click(function () {
	// 	if($(this).isChecked){
	// 		$('#id_payment_mode').prop('disabled',false);
	// 		$('#id_payment_mode').css('cursor','default');
	// 	}else{
	// 		$('#id_payment_mode').prop('disabled',true);
	// 		$('#id_payment_mode').css('cursor','not-allowed');
	// 	}
		
	// });
	/* if ($(".field-status input[type='checkbox']").is(":checked"))
	{
	  
	} */
	//css adding

	$('#content h1').hide();
	$('.breadcrumbs').hide();
	$('fieldset').css('margin-bottom','0px');
	
	$('.form-row').css('padding','5px');
	$('.form-row').css('padding-bottom','10px');
	$('.form-row').css('padding-top','10px');
	$('.field-discount').css('padding-left','127px');
	
	
	$('.inline-group').css('margin','0');
	$('.module h2').css('padding','3px');
	/* $('.module h2').css('font-size','11px'); */
	$('#user-tools').hide();
	$('.submit-row').css('padding','0');
	$('label.required').css('font-weight','normal');
	
	if($('#id_payment_mode').val() == ''){
		$('#id_payment_mode').val(1);
	}
	
	$('.form-row.field-status div').css('padding-right','40px');
	$(".form-row.field-status .checkbox-row").css('float','left');
	$(".form-row.field-status #id_status").css('display','None');
	$(".form-row.field-status #id_status").prop('checked',true);
	$(".form-row.field-status label[for='id_status']").attr('for','paid_fish');
	$(".form-row.field-status .checkbox-row").append("<input type='radio' value='true' id='paid_fish' name='status_fishing' checked>");
	$(".form-row.field-status").append("<div class='checkbox-row-pending'><input type='radio' value='false' id='pending_fish' name='status_fishing' ><label class='vCheckboxLabel' for='pending_fish'>Pending</label></div>");

	$('#pending_fish').click(function(){
		$('.form-row.field-payment_mode select').prop('required',false);
		$(".form-row.field-status #id_status").prop('checked',false);
		$('#id_payment_mode').prop('disabled',true);
		$('#id_payment_mode').val('');
	});
	$('#paid_fish').click(function(){
		$('.form-row.field-payment_mode select').prop('required',true);
		$(".form-row.field-status #id_status").prop('checked',true);
		$('#id_payment_mode').prop('disabled',false);
		$('#id_payment_mode').val(1);
	});
	
	$(".field-customer").css('float','left');
	$(".field-customer input[name='customer']").css('max-width','default');
	
	$(".field-total_amount").css('float','left');
	//$("..field-total_amount input[name='customer']").css('max-width','default');
	
	$(".field-item_quantity input[type='number']").css('width','30px');
	
	$(".field-price input[type='number']").css('width','50px');
	$(".field-price input[type='number']").css('-webkit-writing-mode','none');
	
	$(".inline-related th").each(function(){
		if($(this).html() == "Delete?"){
			$(this).hide();
		}
	});
/* 	 {
  : ;
  margin: 0;
} */

/* Firefox */
/* input[type=number] {
  -moz-appearance: textfield;
} */
	
    /*padding-block-start: 0.35em;
    padding-inline-start: 0.75em;
    padding-inline-end: 0.75em;
    padding-block-end: 0.625em;*/
	
	$('.change-related,.add-related,.delete-related').hide();
	$('#content-related').hide();
	//$('#id_total_amount').val(0);
	$(document).on('change','.field-price input',function(){
		$('#id_total_amount').val(0);
		$('.field-price input').each(function(){
			/* console.log($(this).val()); */
			if($(this).val() != ''){
				$('#id_total_amount').val(parseInt($('#id_total_amount').val())+parseInt($(this).val()));
			}
		});
	});
	$(document).on('change','.field-item_quantity input',function(){
		var item_name = $(this).parent().siblings('.field-item').find('select option:selected').text();
		//console.log(item_name);
		var start = item_name.lastIndexOf('(');
		var end = item_name.lastIndexOf(')');
		var price = "";
		for(var i=start+1;i<end;i++){
			if (item_name[i] == 'R'){
				break;
			}
			price = price.concat(item_name[i].toString());
			//console.log(item_name[i].toString());
		}
		/* console.log(price); */
		priceInput = $(this).parent().siblings('.field-price').find('input');
		priceInput.val($(this).val()*parseInt(price));
		priceInput.change();
		if(price == ""){
			$(this).parent().siblings('.field-item_quantity input').val('');
		}
	});
	//console.log($('.field-item div select'));
	$(document).on('change','.field-item div select',function(){
		// alert();
		// if($(this).find('option:selected').text() == dashes){
		// 	// alert();
		// 	$(this).parent().parent().siblings('.field-item_quantity').find('input').val(0);
		// }
		// console.log($(this).parent().parent().siblings('.field-item_quantity').find('input').val());
		qnttInput = $(this).parent().parent().siblings('.field-item_quantity').find('input');
		if(qnttInput.val() == ''){
			// alert($(this).find('option:selected').attr('value'));
			// if($(this).find('option:selected').attr('value')){
				//$(this).parent().parent().siblings('.field-item_quantity').find('input').val(0);	
			// }else{
				qnttInput.val(1);
			// }
		}
		qnttInput.attr('required',true);
		qnttInput.change();
		
		
	});

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
                },
                dataType: "json",
                success: function (response) {
                    for(i=0;i<response.items.length;i++){
                        itemDD.append("<option value="+response.items[i].id+">"+response.items[i].item_name+"</option>")
                    }
					
                }
            });
        }
		itemDD.attr('required',true);
		itemDD.change();
	});
	$('.field-item').each(function(){
		var slctdItm = $(this);
		console.log(this);
		// $(this).css('background-color','red');
		$('.itmId').each(function(){
			// console.log(this);
			var itmidspan=$(this);
			// console.log('hi');
			if(parseInt(itmidspan.text()) == parseInt(slctdItm.find('option:selected').val())){
				// console.log(itmidspan.text());
				// console.log(itmidspan.siblings('.catId').text());
				// console.log('--');
				slctdItm.siblings('.field-item-cat').find('option[value='+parseInt(itmidspan.siblings('.catId').text())+']').attr('selected',true);
				return;
				// console.log(itmidspan.text()+','+slctdItm.find('option:selected').val());
				// slctdItm.siblings('.field-item-cat option').each(function(){
				// 	console.log($(itmidspan).siblings('.catId').text());
				// 	if(parseInt($(this).val())==parseInt(itmidspan.siblings('.catId')[0].text())){
				// 		$(this).attr('selected',true);
				// 	}
				// });
			}
		});
		// console.log('itm');
		// console.log($(this).find('option:selected').val())	;
	});
});