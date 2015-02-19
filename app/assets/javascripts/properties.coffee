$(document).ready ->

  $('#loaddatepicker').datetimepicker
    format: 'DD/MM/YYYY'

  $('#autoUpdate').hide()
  $('#checkbox1').change ->
    if @checked
      $('#autoUpdate').show()
    else
      $('#autoUpdate').hide()
    return

  $('#multiple_user').click ->
    if $(this).is(':checked')
      $('#individual_user').prop 'checked', true
      $('#individual_user').attr 'disabled', true
    else
      $('#individual_user').prop 'checked', false
      $('#individual_user').removeAttr 'readonly', true
    return

  $('#property_property_type').change ->
    ptype = $(this).val()
    if ptype == 'room_or_unit'
      $('#badroom').val(1)
      $('#badroom').attr 'readonly', true
    return

  ptype_data = $('#ptype').val()
  lease_data = $('#allow').val()
  if ptype_data == 'full_property' and lease_data == 'true'
    numOfBadroom = $('#numbadroom').val()
    console.log(numOfBadroom);
    i = 0
    while i < numOfBadroom
      $('#autoUpdate').show()
      i++
  return
