// JS for Slides in Browse

var slides = document.querySelectorAll('#slides .slide');
var $activeSlide = $('#slides .slide:first-child');

$activeSlide.addClass("showing");

function nextSlide() {
    goToSlide(currentSlide+1);
}

function previousSlide() {
    goToSlide(currentSlide-1);
}

function goToSlide(n) {
  slides[currentSlide].className = 'slide';
  currentSlide = (n+slides.length)%slides.length;
  slides[currentSlide].className = 'slide showing';
}
});
