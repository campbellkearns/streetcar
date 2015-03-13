'use strict';

angular.module('streetCarApp')
.controller('ShowItineraryCtrl', function($scope, $stateParams, ItineraryService) {

  //SHOW ITINERARY
  function getItinerary(id) {
    return ItineraryService.getItinerary(id)
    .success(function(data) {
      console.log(data);
      $scope.itinerary = data;
    })
    .error(function(data /*, status*/) {
      console.log(data);
      //alert('EDIT ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  }

  getItinerary($stateParams.id);

});