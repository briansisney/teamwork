
$(document).on('ready page:load', function() {
  $('.role_section').on('click','.radio' ,function() {
    $('.role_section').find('#free_system_input').val('');
    $(this).find('input:radio').prop("checked", true);
    $('.radio').removeClass('selected_role');
    $(this).addClass('selected_role');
  });
});

$("free_system_input").keyup(function(){
  $('.role_form_wrapper').prop('checked', false);
  $("hidden_radio").val($(this).val());
});

$(document).on('ajax:success', function(xhr, data, status) {
  $('.form-container').html(data);
  console.log(xhr)
});
