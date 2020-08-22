$(document).ready(function (){
    $("#click").click(function (){
        $('html, body').animate({
            scrollTop: $('.info').offset().top
        }, 1000);
    });
});
