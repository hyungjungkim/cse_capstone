
    // Note: This example requires that you consent to location sharing when
     // prompted by your browser. If you see the error "The Geolocation service
     // failed.", it means you probably did not give permission for the browser to
     // locate you.

    function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
                center: {
                    lat: -34.397,
                    lng: 150.644
                },
                zoom: 15
            });

        var contentString = '<dirv id="content">' + '<div id="userinfor">' + 'information div' + '</div>' + '<div id="reviewpoint">' + 'eviewpoint div' + '</div>' + '<input type="submit" value="button1">' + '</div>';

        var infoWindow = new google.maps.InfoWindow({
                content: contentString
            });

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };

                //infoWindow.setPosition(pos);
                var marker = new google.maps.Marker({
                        position: pos,
                        map: map
                    });

                map.setCenter(pos);

                marker.addListener('click', function() {
                    infoWindow.open(map, marker);
                })
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });

        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }
