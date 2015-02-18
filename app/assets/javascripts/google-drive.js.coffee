$(document).ready ->
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