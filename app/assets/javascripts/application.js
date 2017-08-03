// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require jquery.flexslider
//= require turbolinks
//= require materialize/jquery.easing.1.3
//= require materialize/velocity.min
//= require materialize/hammer.min
//= require materialize/jquery.hammer
//= require materialize/global
//= require materialize/collapsible
//= require materialize/dropdown
//= require materialize/modal
//= require materialize/tooltip
//= require materialize/waves
//= require materialize/sideNav
//= require materialize/forms
//= require materialize/toasts
//= require materialize/tabs
//= require gallery
//= require user_validation

// initilization
$(document).on('turbolinks:load', function() {
  UserValidation.init();
  Materialize.updateTextFields();
});
