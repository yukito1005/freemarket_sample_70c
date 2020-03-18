$(function(){
  $(document).on("click", '#preview-destroy', function(){
    let target_id = $(".preview_delete").data('id');
    let ProductID = $(".preview_delete").data("product");
    $.ajax({
      url: "/products/" + ProductID + "/image_destroy",
      type: 'POST',
      data: { prevew_id: target_id,"_method": "DELETE" },
      dataType: 'json'
    })
  })
});