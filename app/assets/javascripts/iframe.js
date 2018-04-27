$(document).ready(function(){

  $('.thumbnail').on('click', function(){
    window.open($('.thumbnail iframe').attr('src'),'_blank')
  });
  toastr.options = {
    "debug": false,
    "onclick": null,
    "fadeIn": 300,
    "fadeOut": 0,
    "timeOut": 0,
    "extendedTimeOut": 0
  }
  toastr.success('Are you the 6 fingered man?')
});
