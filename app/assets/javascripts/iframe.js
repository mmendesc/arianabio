$(document).ready(function(){

  $('.thumbnail').on('click', function(){
    window.open($('.thumbnail iframe').attr('src'),'_blank')
  });
});
