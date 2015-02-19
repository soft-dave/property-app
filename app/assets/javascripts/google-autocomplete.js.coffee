placeSearch = undefined
autocomplete = undefined
componentForm = 
  street_number: 'short_name'
  route: 'long_name'
  locality: 'long_name'
  administrative_area_level_1: 'short_name'
  country: 'long_name'
  postal_code: 'short_name'

window.initialize = ->
  autocomplete = new (google.maps.places.Autocomplete)(document.getElementById('autocomplete'), types: [ 'geocode' ])
  google.maps.event.addListener autocomplete, 'place_changed', ->
    fillInAddress()
    return
  return

window.fillInAddress = ->
  place = autocomplete.getPlace()
  for component of componentForm
    document.getElementById(component).value = ''
    document.getElementById(component).disabled = false
  i = 0
  while i < place.address_components.length
    addressType = place.address_components[i].types[0]
    if componentForm[addressType]
      val = place.address_components[i][componentForm[addressType]]
      document.getElementById(addressType).value = val
    i++
  return

window.initializeNearbyAttraction = ->
  nearby_attraction = document.getElementById('nearby_attractions')
  nearby = new (google.maps.places.Autocomplete)(nearby_attraction)