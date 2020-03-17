$(function(){
  $('#image-hover li').hover(function(){
    let index = $('#image-hover li').index(this);
    let imageUrl = $('#image-hover li').eq(index).find('img').attr('src');

    className = $(this).parent().attr('class').split(" ");
    defaultImage = $('img.mainimage.'+className[0]).attr('src');
        $('img.mainimage.'+className[0]).attr('src',imageUrl);
    },function(){
        $('img.mainimage.'+className[0]).attr('src',defaultImage);
  });
});