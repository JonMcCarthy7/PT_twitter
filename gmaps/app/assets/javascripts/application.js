// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs

// require rails-ujs
//= require turbolinks
//= require_tree .


$(document).ready(function () {

  function initialize() {
    var myCoords = new google.maps.LatLng(33.784624, -84.422030);

    var mapOptions = {
      center: myCoords,
      zoom: 6,
      scrollwheel: false
    };

    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
    var image = {
       url: 'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png',
       // This marker is 20 pixels wide by 32 pixels high.
       size: new google.maps.Size(20, 32),
       // The origin for this image is (0, 0).
       origin: new google.maps.Point(0, 0),
       // The anchor for this image is the base of the flagpole at (0, 32).
       anchor: new google.maps.Point(0, 32)
     };
    var marker = new google.maps.Marker({
      position: myCoords,
      map: map,
      icon: image,
      title: 'Pizza',
      animation: google.maps.Animation.DROP
    });

    var contentString = '<h2>Hello World</h2>' +
        '<p>Where all your dreams come to die...</p>';

    var infowindow = new google.maps.InfoWindow({
      content: contentString
    });

    google.maps.event.addListener(marker, 'click', function() {
       infowindow.open(map, marker);
    });

  }

  google.maps.event.addDomListener(window, 'load', initialize);

});
