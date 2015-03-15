'use strict';

angular.module('streetCarApp')
.controller('ShowItineraryEventsCtrl', function($scope, $stateParams, EventService) {

  //SHOW ITINERARY
  function getItineraryEvents(id) {
    return EventService.getItineraryEvents(id)
    .success(function(data) {
      console.log(data);
      $scope.itineraryEvents = data;
    })
    .error(function(data /*, status*/) {
      console.log(data);
      //alert('EDIT ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  }

  getItineraryEvents($stateParams.id);

});