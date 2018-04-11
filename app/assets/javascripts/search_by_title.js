$(document).ready(function(){
  $('#search-title').submit(function(e){
    e.preventDefault();
    $.ajax ({
      url: '/search_by_title',
      data: {title: $("input[name='title']").val(),format: 'js'},
      success: function(){
        $('.method-table-title').text('Métodos encontrados nas categorias abaixo')
      }
    })
  })
})


