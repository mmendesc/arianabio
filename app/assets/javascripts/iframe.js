$(document).ready(function(){

  $('.thumbnail').on('click', function(){
    window.open($('.thumbnail iframe').attr('src'),'_blank')
  });

  toastr.options = {
    "closeButton": true,
    "debug": false,
    "onclick": null,
    "fadeIn": 300,
    "fadeOut": 0,
    "timeOut": 0,
    "extendedTimeOut": 0,
    "positionClass": "toast-bottom-right",
    "onclick": function(){
      window.open('https://www.survio.com/survey/d/H9A9R4K0B7G9F1N2F');
    }
  }

  setTimeout(function(){
    toastr.success('Nos ajude preenchendo nossa pesquisa.');
  },5000);

});
