$(document).ready ->

  $('#loaddatepicker').datetimepicker
    format: 'DD/MM/YYYY'
  
  $('#showError1').click ->
    $('#dispMessage1').show()

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

  $().gdrive 'init',
    'devkey': 'AIzaSyCm921e5Ft44Apqc40H1DBo5VMRYaNbu1g'
    'appid': '826918776083-stu8qvkockfdl2ijqmg11nidgfo9g4f0.apps.googleusercontent.com'
  $('#gdrive_file').gdrive 'set',
    'trigger': 'gdrive_file_selector'
    'header': 'Select a file'
    'filter': ''
  $('#gdrive_folder').gdrive 'set',
    'trigger': 'gdrive_folder_selector'
    'header': 'Select a folder'
    'filter': 'application/vnd.google-apps.folder'
  return
