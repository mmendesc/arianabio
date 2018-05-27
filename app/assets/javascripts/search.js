$(document).on('turbolinks:load',function(){
  $('#search-title').submit(function(e){
    e.preventDefault();
    $.ajax ({
      url: '/search_by_title',
      data: {topic_id: $('select[name=topic_id]').val(),format: 'js'},
      success: function(){
        $('.method-table-title').text('Métodos encontrados nas categorias abaixo')
        $('.welcome .container').show();
        $("html, body").animate({ scrollTop: $('.welcome').offset().top }, 1000);
      }
    })
  })

  $('#search-category').submit(function(e){
    e.preventDefault();
    $.ajax ({
      url: '/search_by_category',
      data: {title: $("input[name='category_id']").val(),format: 'js'},
      success: function(){
        $('.method-table-title').text('Métodos encontrados nas categorias abaixo')
        $('.welcome .container').show();
        $("html, body").animate({ scrollTop: $('.welcome').offset().top }, 1000);
      }
    })
  })
})


