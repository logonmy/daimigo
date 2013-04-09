
$(document).ready(function(){
$('.acc_container').hide(); 
$('.acc_trigger:first').addClass('active').next().show();
//On Click
$('.acc_trigger').click(function(){
 if( $(this).next().is(':hidden') ) { 
  $('.acc_trigger').removeClass('active').next().slideUp();
  $(this).toggleClass('active').next().slideDown(); 
 }
 return false; 
});
});

$(document).ready(function(e) {
    $("#test tr").mouseover( function(){
		$(this).addClass("over");
		$(this).css("font-weight","bold");
		}).mouseout(function(){
			$(this).removeClass("over");
			$(this).css("font-weight","normal");
			})
			$("#test tr:even").addClass("alt");
		
});
