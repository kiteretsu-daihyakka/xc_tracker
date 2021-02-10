$(document).ready(function(){
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
});