$(function () {
  $("#slider").responsiveSlides({
    auto: true,
    nav: true,
    speed: 500,
    namespace: "callbacks",
    pager: true,
  });
});


$("span.menu").click(function(){
  $("ul.navig").slideToggle("slow" , function(){
  });
});
