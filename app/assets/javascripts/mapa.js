handler = Gmaps.build('Google');
handler.buildMap({ provider: { center: new google.maps.LatLng(-12.123932,-77.025919), maxZoom: 17, scrollwheel: false}, internal: {id: 'map'}}, function(){
  markers = handler.addMarkers([
    {
      "lat": -12.123932,
      "lng": -77.025919,
      "picture": {
        "url": "/assets/gmaps-marker.png",
        "width":  66,
        "height": 66
      },
      "infowindow": "hello!"
    }
  ]);
  handler.bounds.extendWith(markers);
  handler.fitMapToBounds();
});
