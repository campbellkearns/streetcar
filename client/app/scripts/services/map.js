// 'use strict';

// angular.module('streetCarApp')
// .service('MapService', function() {
//   // var L;
//   // L.mapbox.accessToken = 'pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg';

//   this.init = function (scope) {

//     // scope.map = L.mapbox.map('map', 'brandonkearns.lc8pkpaa')
//     //     .setView([33.771, -84.414], 13);
//     scope.markers = {};
//     scope.center = {
//       lat: 33.771,
//       lng: -84.414,
//       zoom: 13
//     };
//     scope.layers = {
//       baselayers: {
//         mapbox_terrain: {
//           name: 'Streetcar Map',
//           url: 'http://api.tiles.mapbox.com/v4/brandonkearns.lc8pkpaa/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
//           type: 'xyz',
//           layerParams: {
//             apikey: 'pk.eyJ1IjoiYnJhbmRvbmtlYXJucyIsImEiOiJ2WkJxSncwIn0.GBT4lfAwQoOOLmACb6U7mg',
//             mapid: 'brandonkearns.lc8pkpaa'
//           }
//         }
//       }
//     };
//   };
// });