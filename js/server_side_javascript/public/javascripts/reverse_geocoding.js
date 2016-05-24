

var pos = {
  lat:37.450587,
  lng:126.657371
};

function initMap() {
  console.log("ddddd")
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 25,
    center: pos
  });
  var geocoder = new google.maps.Geocoder;
  var infowindow = new google.maps.InfoWindow;

   geocodeLatLng(geocoder, map, infowindow);
   var cityCircle = new google.maps.Circle({
       strokeColor: '#FF0000',
       strokeOpacity: 0.8,
       strokeWeight: 2,
       fillColor: '#FF0000',
       fillOpacity: 0.35,
       map: map,
       center: pos,
       radius: 300
     });
}


function geocodeLatLng(geocoder, map, infowindow) {

  geocoder.geocode({'location': pos}, function(results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      if (results[1]) {
        map.setZoom(15);
        var marker = new google.maps.Marker({
          position: pos,
          map: map
        });

        var text = document.getElementById("loc");
        text.innerHTML = results[1].formatted_address;
        infowindow.setContent(results[1].formatted_address);
        infowindow.open(map, marker);
      } else {
        window.alert('No results found');
      }
    } else {
      window.alert('Geocoder failed due to: ' + status);
    }
  });
}
