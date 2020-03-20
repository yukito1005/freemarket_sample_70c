$(function(){
  $('.like-btn').on('click',function(){
    var data = $(this).data('id');
    console.log(data);
    $.ajax({
      url: "/products/" + data + "/likes/like_create",
      type: "POST",
      data: {product_id: data},
      dataType: "json",
      processData: false,
      contentType: false
    })
    .done(function(data){
      console.log(data);
    })
    .fail(function(){
      console.log('NG');
    })
  });
});

