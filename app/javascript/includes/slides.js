// JS for Slides in Browse
$(function(){
var slides = document.querySelectorAll('#slides .slide');
var $activeSlide = $('#slides .slide:first-child');

$activeSlide.addClass("showing");

$("#approve").on("click", function(){
  //console.log("approve");
  goToSlide('approve');
})

$("#decline").on("click", function(){
  //console.log("decline");
  goToSlide('decline');
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
