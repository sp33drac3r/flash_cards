$(document).ready(function() {
  Materialize.updateTextFields();
  $('#textarea1').val('New Text');
  $('#textarea1').trigger('autoresize');
  $('select').material_select();
})
