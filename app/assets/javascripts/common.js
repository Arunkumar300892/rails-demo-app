// initilization
$(document).on('turbolinks:load', function() {

  // Handle flash messages
  var $notice = $('.notice'),
      $alert = $('.alert');

  if ($notice.length > 0) {
    Materialize.toast($notice[0].innerHTML, 4000, 'green');
  }

  if ($alert.length > 0) {
    Materialize.toast($alert[0].innerHTML, 4000, 'red lighten-2');
  }

  // To hide default model validation error messages on the field
  if ($('span.hide').length > 0){
    $('span.hide').hide();
  }

  var $errors = $('#error_explanation');
  var $errorUl = $errors.find('ul li');
  if ($errors.length) {
    $errors.find('h2').hide();
    $errorUl.each(function(i){
      var text = $(this).text();
      $(this).hide();
      $('.field_with_errors').find('input').addClass('invalid').show();
      Materialize.toast(text, 4000, 'red lighten-2');
    })
  }

  // init materialize fields
  Materialize.updateTextFields();
});
