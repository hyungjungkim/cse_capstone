
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
var contentString = '<dirv id="content">' + '<div id="userinfor">' + 'information div' + '</div>' + '<div id="reviewpoint">' + 'eviewpoint div' + '</div>' + '<input type="submit" value="button1">' + '</div>';
var map;
var infoWindow = [];

function initMap() {
         map = new google.maps.Map(document.getElementById('map'), {
                center: {
                    lat: 36.397,
                    lng: 126.644
                },
                zoom: 15,
                mapTypeId:google.maps.MapTypeId.ROADMAP
            });


          /*  infoWindow = new google.maps.InfoWindow({
                    content: contentString
                });
*/
        // Try HTML5 geolocation.

                //infoWindow.setPosition(pos);

                for(var i=0; i<4; i++)
                {
                  markers[i] = new google.maps.Marker({
                    position: posArr[i],
                    map: map
                  });
                  infoWindow[i] = new google.maps.InfoWindow({
                    content:contentString
                  });

                  google.maps.event.addListener(markers[i], 'click', function(innerkey){
                    return function(){
                      infoWindow.forEach(function(item, index, infoWindow){
                        infoWindow[index].close();
                      });
                      infoWindow[innerkey].open(map, markers[innerkey]);
                    }
                  }(i));
                }

}
/* 요기 아래는 블로그에서 본 예제코드,
//근데 위 코드가 더 나은듯 신경안써도 댐
function addMarker(pos){
      marker = new google.maps.Marker({
      position:pos,
      map: map
  });
  markers.push(marker);
//  google.maps.event.addListener(marker, 'click', function(event){
//    popInfowindow(pos);
//  });
}

function popInfowindow(pos){

//  addMarker(pos);
//  infoWindow.open(map, marker);
}


/*
    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
    }
*/
