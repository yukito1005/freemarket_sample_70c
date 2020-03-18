$(function(){
  var num = $('.edit-image-preview').length
  $('#image-box__container').show()
  $('#image-box__container').attr('class', `item-num-${num}`)
  if (num == 10){
    $('#image-box__container').css('display', 'none')   
  }
  
  function appendOption(category){
    var html = `<option value="${category.id}" data-category="${category.id}">${category.name}</option>`;
    return html;
  }


  function appendGrandchidrenBox(insertHTML){
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `<div class='listing-select-wrapper__added' id= 'grandchildren_wrapper'>
                              <div class='listing-select-wrapper__box'>
                                <select class="listing-select-wrapper__box--select" id="grandchild_category" name="product[category_id]">
                                  <option value="---" data-category="---">---</option>
                                  ${insertHTML}
                                </select>
                              </div>
                            </div>`;
    $('.listing-select-wrapper__box').append(grandchildSelectHtml);
  }




  $('.listing-select-wrapper__box').on('change', '.edit-children_wrapper', function(){
    var childData = document.getElementById('children_wrapper').value; 
    var childId = $('#children_wrapper option:selected').data('category'); 
    if (childId != "---"){ 
      $.ajax({
        url: '/products/get_category_grandchildren',
        type: 'GET',
        data: { child_id: childId },
        dataType: 'json'
      })
      .done(function(grandchildren){
        if (grandchildren.length != 0) {
          $('#grandchildren_wrapper').remove();
          $('#size_wrapper').remove();
          $('#brand_wrapper').remove();
          $('.edit-grandchildren_wrapper').remove();

          var insertHTML = '';
          grandchildren.forEach(function(grandchild){
            insertHTML += appendOption(grandchild);
          });
          appendGrandchidrenBox(insertHTML);
        }
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
      })
    }else{
      $('#grandchildren_wrapper').remove(); 
      $('#size_wrapper').remove();
      $('#brand_wrapper').remove();
      $('.edit-grandchildren_wrapper').remove();

    }
  });


    var data = $('#price_calc').val();
    var profit = Math.round(data * 0.9)  
    var fee = (data - profit) 
    $('.right_bar').html(fee) 
    $('.right_bar').prepend('¥') 
    $('.right_bar_2').html(profit)
    $('.right_bar_2').prepend('¥')
    $('#price').val(profit) 
    if(profit == '') {  
    $('.right_bar_2').html('');
    $('.right_bar').html('');
    }

});