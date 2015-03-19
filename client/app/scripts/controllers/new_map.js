'use strict';

angular.module('streetCarApp')
.controller('NewMapCtrl', function($scope, $http, leafletData, $stateParams) {
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

  var route = {
    'type': 'FeatureCollection',                                                                                    
    'features': [
      { 'type': 'Feature', 
        'properties': { 'Name':        'Downtown Atlanta Streetcar', 
                        'description': 'Atlanta Streetcar Route'},
        'geometry':   { 'type':          'MultiLineString',
                      'coordinates': [ [ 
                      [ -84.388456137682638, 33.75630493855774, 0.0 ], 
                      [ -84.387931518873032, 33.757211227649663, 0.0 ], 
                      [ -84.387649958710824, 33.757676930352723, 0.0 ], 
                      [ -84.387584292211827, 33.757964814798392, 0.0 ], 
                      [ -84.387570531719646, 33.758167618170887, 0.0 ], 
                      [ -84.387571143641225, 33.758406180299062, 0.0 ], 
                      [ -84.388485107958346, 33.758404541340447, 0.0 ], 
                      [ -84.388995320875296, 33.75883214261318, 0.0 ], 
                      [ -84.389854379974707, 33.75968464853721, 0.0 ], 
                      [ -84.392072964059352, 33.759698211278241, 0.0 ], 
                      [ -84.392086027268448, 33.759232989282197, 0.0 ], 
                      [ -84.39142848663721, 33.75899562512253, 0.0 ], 
                      [ -84.39121764519642, 33.758919370423413, 0.0 ], 
                      [ -84.390672188725873, 33.758397908069391, 0.0 ], 
                      [ -84.390088218370863, 33.757890826752408, 0.0 ], 
                      [ -84.389594194392075, 33.757372844867987, 0.0 ], 
                      [ -84.389048729839772, 33.756840639832717, 0.0 ], 
                      [ -84.388460421785766, 33.756304930860622, 0.0 ], 
                      [ -84.388097812771093, 33.755904676190902, 0.0 ], 
                      [ -84.387866000503536, 33.755721398030417, 0.0 ], 
                      [ -84.388516865144638, 33.75448924322064, 0.0 ], 
                      [ -84.38626816984663, 33.754482330512303, 0.0 ], 
                      [ -84.381862226230609, 33.754446153324217, 0.0 ], 
                      [ -84.380071429048655, 33.754417055977562, 0.0 ], 
                      [ -84.374364942992088, 33.754351641314457, 0.0 ], 
                      [ -84.374376272428094, 33.75549672672858, 0.0 ], 
                      [ -84.378536225986664, 33.75551415176654, 0.0 ], 
                      [ -84.3794187418398, 33.755538237708983, 0.0 ], 
                      [ -84.380215542890681, 33.755522548107621, 0.0 ], 
                      [ -84.386089215453296, 33.755598130424993, 0.0 ], 
                      [ -84.387550091948498, 33.755599103577467, 0.0 ], 
                      [ -84.387866000503536, 33.755721398030417, 0.0 ] 
                      ] ] } }
    ]
  };

  var routeStyle = {
    'color'   : '#ff4964',
    'weight'  : 7,
    'opacity' : 0.65
  };

  leafletData.getMap().then(function(map) {
    L.geoJson(route, {
      style: routeStyle 
    }).addTo(map);
    map.scrollWheelZoom.disable();
  });

  var eventData = [];

  $http.get('api/events/')
    .success(function(data) {
      for(i=0; i < data.length; i++) {
        var eventData = {
          name: data[i].name,
          lat:  data[i].latitude,
          lng:  data[i].longitude
        };
        console.log(eventData);
        events.push(eventData);
      
      var markers =[];

      for (i = 0; i < events.length; i++) {
        markers.push(L.marker([parseFloat(events[i].lat), 
                               parseFloat(events[i].lng)], { 
                               title: events[i].name, 
                               opacity: 0.89}));
      }

      leafletData.getMap().then(function(map){
      for (i=0; i < events.length; i++) {
        markers[i].addTo(map)
        .bindPopup(events[i].name);
      }
      });
    }
  });
});