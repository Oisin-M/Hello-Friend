// JS for Slides in Browse
$(function(){
var slides = document.querySelectorAll('#slides .slide');
var $activeSlide = $('#slides .slide:first-child');

$activeSlide.addClass("showing");

$("#decline").on"("click", function(){
  goToSlide('decline');
})

$("#decline").on"("click", function(){
  goToSlide('approve');
})

function goToSlide(action) {
  $activeSlide.removeClass("showing");
  $activeSlide = $activeSlide.next(".slide");

  //send data to controller
  if( action == "approve"){

  } else {

  }

  $activeSlide.addClass("showing");
}
});
