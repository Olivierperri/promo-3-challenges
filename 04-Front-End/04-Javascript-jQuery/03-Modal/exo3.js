$(function(){
  $('#image-overlay').hide();

  $('#my-image').on("click", function() {
    $('#image-overlay').show();
    $('#image-overlay').append("<div><img src='http://p1.storage.canalblog.com/14/12/873998/66021524.jpg' height='600' width='900'></div>")
   });

  $('#image-overlay').on("click", function() {
    $('#image-overlay').hide();
    $('#image-overlay').empty()
  });

})