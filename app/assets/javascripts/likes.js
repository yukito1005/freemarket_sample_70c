$(function(){

  function addLike(like){
    let html = `<p>お気に入りを外す ${like}</p>
                  <button class="delete-like-btn"></button>`
    $('.btn-test').append(html);
  }

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
      console.log(data.length);
      let like = data.length
      $(".btn-content").remove();
      $(".like-btn").remove();
      addLike(like);
    })
    .fail(function(){
      console.log('NG');
    })
  });
  $(".delete-like-btn").on("click",function(){
    var data = $(this).data('id')  
  
  
});