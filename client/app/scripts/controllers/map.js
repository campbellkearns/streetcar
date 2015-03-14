'use strict';

angular.module('streetCarApp')
.controller('MapCtrl', function($scope) {
  var places = {};
  var numberOfEvents = $scope.event.length;
  
  for(var i=0; i < numberOfEvents, i++;) {

  }

  angular.extend($scope, {
    markers: {
      testMarker: {
        lat: 33.771,
        lng: -84.414,
        message: 'Name of place'
      }
    },
    center: {
      lat: 33.771,
      lng: -84.414,
      zoom: 13
    },
    layers: {
      baselayers: {
        mapbox_terrain: {
          name: 'Streetcar Map',
          url: 'http://api.tiles.mapbox.com/v4/brandonkearns.lc8pkpaa/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
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