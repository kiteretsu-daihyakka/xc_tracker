$(document).ready(function(){
	alert("{{mycontext}}");
	//$('#id_payment_mode').attr('disable');
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
	$('.field-status').css('width','447px');
	
	$('.inline-group').css('margin','0');
	$('.module h2').css('padding','3px');
	/* $('.module h2').css('font-size','11px'); */
	$('#user-tools').hide();
	$('.submit-row').css('padding','0');
	$('label.required').css('font-weight','normal');
	
	$(".field-status").css('float','left');
	
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
	$('.field-price input').on('change',function(){
		$('#id_total_amount').val(0);
		$('.field-price input').each(function(){
			/* console.log($(this).val()); */
			if($(this).val() != ''){
				$('#id_total_amount').val(parseInt($('#id_total_amount').val())+parseInt($(this).val()));
			}
		});
	});
	$('.field-item_quantity input').on('change',function(){
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
		$(this).parent().siblings('.field-price').find('input').val($(this).val()*parseInt(price));
		$(this).parent().siblings('.field-price').find('input').change();
	});
	//console.log($('.field-item div select'));
	$('.field-item div select').change(function(){
		console.log($(this).parent().parent().siblings('.field-item_quantity').find('input').val());
		if($(this).parent().parent().siblings('.field-item_quantity').find('input').val() == ''){
			$(this).parent().parent().siblings('.field-item_quantity').find('input').val(1);
		}
		$(this).parent().parent().siblings('.field-item_quantity').find('input').change();
	});
});