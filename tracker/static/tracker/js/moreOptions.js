$(document).ready(function(){
    //OTHER OPTIONS GST AND OTHER TAB
    $('.model-gst,.model-paymentmode').attr('display','None');
	$('#nav-sidebar tbody').append("<tr id='gstTab' style='background-color:lightgray;'>"+$('.model-gst').html()+"</tr>");
	$('#nav-sidebar tbody').append("<tr id='paymentmodeTab' style='background-color:lightgray;'>"+$('.model-paymentmode').html()+"</tr>");
	$('.model-gst,.model-paymentmode').html('');
	$('#gstTab,#paymentmodeTab').hide();
	$('#nav-sidebar tbody').append("<tr><td><a href='#' id='moreOptions'>More Options</a></td></tr>");
	$('#moreOptions').click(function(e){
		e.preventDefault();
		$('#gstTab,#paymentmodeTab').toggle();
	});
});