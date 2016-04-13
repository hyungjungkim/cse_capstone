
    // Note: This example requires that you consent to location sharing when
     // prompted by your browser. If you see the error "The Geolocation service
     // failed.", it means you probably did not give permission for the browser to
     // locate you.
var pos = {
  lat:36.397,
  lng:126.644
};

var  posArr = [];

var pos_test1 = {
  lat:36.398,
  lng:126.644
};

var pos_test2 = {
  lat:36.396,
  lng:126.644
};

var pos_test3 = {
  lat:36.397,
  lng:126.643
};

posArr.push(pos);
posArr.push(pos_test1);
posArr.push(pos_test2);
posArr.push(pos_test3);

var markers = [];

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
                center: {
<<<<<<< HEAD
                    lat: 36.397,
                    lng: 126.644
=======
                    lat: 37.449,
                    lng: 126.653
>>>>>>> 86dfc23f1e742cb765ca79851891aad66b80f3d5
                },
                zoom: 15
            });

        var contentString = '<dirv id="content">' + '<div id="userinfor">' + 'information div' + '</div>' + '<div id="reviewpoint">' + 'eviewpoint div' + '</div>' + '<input type="submit" value="button1">' + '</div>';

        var infoWindow = new google.maps.InfoWindow({
                content: contentString
            });

        // Try HTML5 geolocation.


                //infoWindow.setPosition(pos);
                for(var i =0; i<4; i++){
                  var marker = new google.maps.Marker({
                        position: posArr[i],
                        map: map
                    });

                  markers.push(marker);

                    marker.addListener('click', function() {
                        infoWindow.open(map, marker);
                    });
                  }
            }



/*
    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }
*/
