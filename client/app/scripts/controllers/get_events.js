'use strict';

angular.module('streetCarApp')
.controller('GetEventsCtrl', function($scope, EventService) {

 //GET RANDOM EVENTS
  function getEvents() {
    EventService.getEvents()
    .success(function(data /*, status, headers, config */) {
      $scope.events = data;
    })
    .error(function(/* data, status, headers, config */) {
      //alert('GET: error');
    });
  }

  getEvents();

  //GET A SINGLE EVENT
  $scope.getEvent = function() {
    console.log('THIS IS THE GET_EVENT METHOD');
    return EventService.getEvent()
    .success(function(data) {
      $scope.evnt = data;
      console.log('getEvent DATA:' + data);
    })
    .error(function(data) {
      console.log(data);
      //alert('EDIT ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };

  $scope.addEvents = function() {
    var newItinerary = { name: $scope.newItineraryName, 
                         date: $scope.newItineraryDate };
    var newEvents = $scope.events;
 
    EventService.addEvents(newItinerary, newEvents)
    .success(function() {
      $scope.newItineraryName = null;
      $scope.newItineraryDate = null;
    })
    .error(function(data/*, status*/) {
      console.log(data);
      //alert('SAVE ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };

  $scope.deleteEvent = function(index) {
      //console.log('INDEX:' + index);
    EventService.getEvent()
      .success(function(data){
        $scope.events[index] = data;
      });
  };
});