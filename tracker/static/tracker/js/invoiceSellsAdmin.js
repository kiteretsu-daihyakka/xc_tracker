$(document).ready(function(){
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
		var item_name = $(this).parent().siblings('.field-item').find('select option').text();
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
		console.log('changed');
	});
});