
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

 $("free_system_input").keyup(function(){
   $("hidden_radio").val($(this).val())
 })
