// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('ready page:load', function() {
  $('.user_form_wrapper').click(function() {
    $(this).find('input:radio').prop("checked", true);
    $('.user_form_wrapper').removeClass('selected_role');
    $(this).addClass('selected_role');
  });
  $('.client_form_wrapper').click(function() {
    $(this).find('input:radio').prop("checked", true);
    $('.client_form_wrapper').removeClass('selected_role');
    $(this).addClass('selected_role');
  });
  $('.role_form_wrapper').click(function() {
    $(this).find('input:radio').prop("checked", true);
    $('.role_form_wrapper').removeClass('selected_role');
    $(this).addClass('selected_role');
  });
});


// $(document).ready(function() {
//   $('.user_form_wrapper').click(function() {
//     $(this).find('input:radio').prop("checked", true);
//     $('.user_form_wrapper').removeClass('selected_role');
//     $(this).addClass('selected_role');
//   });
//   $('.client_form_wrapper').click(function() {
//     $(this).find('input:radio').prop("checked", true);
//     $('.client_form_wrapper').removeClass('selected_role');
//     $(this).addClass('selected_role');
//   });
//   $('.role_form_wrapper').click(function() {
//     $(this).find('input:radio').prop("checked", true);
//     $('.role_form_wrapper').removeClass('selected_role');
//     $(this).addClass('selected_role');
//   });
// });