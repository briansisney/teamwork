
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
  $('.role_section').on('click','.clickable_role' ,function() {
    $('.role_section').find('#free_system_input').val('')
    $(this).find('input:radio').prop("checked", true);
    $('.clickable_role').removeClass('selected_role');
    $(this).addClass('selected_role');
  });
});

 $("free_system_input").keyup(function(){
  $('.role_form_wrapper').prop('checked', false)
  $("hidden_radio").val($(this).val())
 })
