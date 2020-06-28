// JS for Slides in Browse
$(function(){



var slides = document.querySelectorAll('#slides .slide');
var $activeSlide = $('#slides .slide:first-child');

$activeSlide.addClass("showing");

$("#decline").on("click", function() {
  var project_id=$activeSlide.data("id");

  $.ajax({
    url: "/decline/"+project_id,
    method: "post",
    dataType: "ajax"
  })

  goToSlide('decline');
});

$("#approve").on("click", function() {
  var project_id=$activeSlide.data("id");
  var acc_id=$activeSlide.data("acc_id");
  var proj_name=$activeSlide.data("proj_name");

  $.ajax({
    url: "/approve/"+project_id,
    method: "post",
    dataType: "ajax"
  })

  goToSlide('approve');

  location.reload()

});

function goToSlide(action) {
  $activeSlide.removeClass("showing");
  $activeSlide = $activeSlide.next(".slide");
  $activeSlide.addClass("showing");
}

$(".open-conversation").on("click", function() {

  var project_id = $(this).data("proj_id");

  var account_id = $(this).data("acc_id");

  $.ajax({
    url: "/get_conversation/"+account_id+"-"+project_id,
    method: "post",
    dataType: "script"
  })

  // location.reload();

});

$(".open-project").on("click", function() {

  var project_id = $(this).data("id");
  console.log("proj");
  console.log(project_id);

  //
  // $.ajax({
  //   url: "/get/conversation/"+account_id,
  //   method: "post",
  //   dataType: "script"
  // })
});



});
