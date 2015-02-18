
var placeSearch, autocomplete;
var componentForm = {
  property_street_number: 'short_name',
  property_street_address: 'long_name',
  property_city: 'long_name',
  property_state: 'short_name',
  property_zip_code: 'short_name',
  property_country: 'long_name'
};

function initialize() {
  // Create the autocomplete object, restricting the search
  // to geographical location types.
  autocomplete = new google.maps.places.Autocomplete(
      /** @type {HTMLInputElement} */(document.getElementById('autocomplete')),
      { types: ['geocode'] });
  // When the user selects an address from the dropdown,
  // populate the address fields in the form.
  google.maps.event.addListener(autocomplete, 'place_changed', function() {
    fillInAddress();
  });
}

// [START region_fillform]
function fillInAddress() {
  // Get the place details from the autocomplete object.
  var place = autocomplete.getPlace();

  for (var component in componentForm) {
    document.getElementById(component).value = '';
    document.getElementById(component).disabled = false;
    
 
    
  }

  // Get each component of the address from the place details
  // and fill the corresponding field on the form.
    document.getElementById('property_street_number').value = place.address_components[0]['short_name'];
    document.getElementById('property_street_address').value = place.address_components[1]['long_name'];
    document.getElementById('property_city').value = place.address_components[2]['long_name'];
    document.getElementById('property_state').value = place.address_components[3]['short_name'];
    document.getElementById('property_zip_code').value = place.address_components[5]['short_name'];
    document.getElementById('property_country').value = place.address_components[4]['long_name'];
    
  //console.log(place.address_components[0]);
}
// [END region_fillform]

// [START region_geolocation]
// Bias the autocomplete object to the user's geographical location,
// as supplied by the browser's 'navigator.geolocation' object.
function geolocate() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var geolocation = new google.maps.LatLng(
          position.coords.latitude, position.coords.longitude);
      var circle = new google.maps.Circle({
        center: geolocation,
        radius: position.coords.accuracy
      });
      autocomplete.setBounds(circle.getBounds());
    });
  }
}

 

           