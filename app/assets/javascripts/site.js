// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//jQuery
$(document).ready(function(){


	// Button Burguer animation
	$("#js-btn--burguer").click(function() {
	  $(this).toggleClass("js-active");
	  toggleMenu();
	  toggleShadow();
    toggleBlockScroll();
	});

function toggleMenu (){
	$("#js-nav--toggle").toggleClass("js-show-menu");
}

function toggleShadow(){
    $("#js-lightbox").toggleClass("js-lightbox--active");
}
function toggleBlockScroll(){
    $("body").toggleClass("js-block-scroll");
}




























});