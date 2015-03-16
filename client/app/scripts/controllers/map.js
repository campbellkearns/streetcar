'use strict';

angular.module('streetCarApp')
.controller('MapCtrl', function($scope, $http, leafletData, $stateParams) {
  var i;
  var events = [];
  
  angular.extend($scope, {
    markers: [],
    center: {
      lat: 33.771,
      lng: -84.414,
      zoom: 13
    },
    layers: {
      baselayers: {
        mapbox_terrain: {
          name: 'Streetcar Map',
          url: 'http://api.tiles.mapbox.com/v4/brandonkearns.lc8pkpaa/{z}/{x}/{y}.png256?access_token=pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
          type: 'xyz',
          layerOptions: {
            apikey: 'pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
            mapid: 'brandonkearns.lc8pkpaa'
          },
          layerParams: {}
        }        
      }
    }
  });

  // $scope.markers = {
  //   place: {
  //     lat: parseFloat(eventData.latitude),
  //     lng: parseFloat(eventData.longitude)
  //   }
  // };


  var eventData = [];

  $http.get('api/events/' + $stateParams.id)
    .success(function(data) {
      for(i=0; i < data.length; i++) {
        var eventData = {
          name: data[i].name,
          lat:  data[i].latitude,
          lng:  data[i].longitude
        };
        console.log(eventData);
        events.push(eventData);
      
      // var lat;
      // var lng;
      var markers =[];

      for (i = 0; i < events.length; i++) {
        markers.push(L.marker([parseFloat(events[i].lat), parseFloat(events[i].lng)]));
      }

      leafletData.getMap().then(function(map){
      for (i=0; i < events.length; i++) {
        markers[i].addTo(map);
      }
      });
    }
  });
      
    

  // MapService.init($scope);
  // $scope.center = {
  //   lat: 33.771,
  //   lng: -84.414,
  //   zoom: 13
  // };
  // $scope.layers = {
  //   baselayers: {
  //     mapbox_terrain: {
  //       name: 'Streetcar Map',
  //       url: 'http://api.tiles.mapbox.com/v4/brandonkearns.lc8pkpaa/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
  //       type: 'xyz',
  //       layerOptions: {
  //         apikey: 'pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
  //         mapid: 'brandonkearns.lc8pkpaa'
  //       },
  //       layerParams: {}
  //     }
  //   }
  // };
  // $scope.markers = {
  //   lat: 33.771,
  //   lng: -84.414
  // };
});