$(document).ready(function() {

  
  $('.li-delete').each(function() {
    btn_delete = $(this).parents('.admin-controls').next();
    btn_delete.appendTo($(this));
  })

});
