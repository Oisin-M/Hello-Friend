// JS for Slides in Browse
$(function(){
var slides = document.querySelectorAll('#slides .slide');
var $activeSlide = $('#slides .slide:first-child');

$activeSlide.addClass("showing");

$("#decline").on("click", function() {
  var user_id=$activeSlide.data("id");

  $.ajax({
    url: "/decline/"+user_id,
    method: "post",
    dataType: "ajax"
  })

  goToSlide('decline');
});

$("#approve").on("click", function() {
  var user_id=$activeSlide.data("id");

  $.ajax({
    url: "/approve/"+user_id,
    method: "post",
    dataType: "ajax"
  })

  goToSlide('approve');
});

function goToSlide(action) {
  $activeSlide.removeClass("showing");
  $activeSlide = $activeSlide.next(".slide");
  $activeSlide.addClass("showing");
}
});


$("#message").on("click", function() {

  console.log("click");
  // var project_id = $(".open-conversation").data("id");
  //
  // $.ajax({
  //   url: "/get/conversation/"+account_id,
  //   method: "post",
  //   dataType: "script"
  // })
});
