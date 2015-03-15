'use strict';

angular.module('streetCarApp')
.controller('GetEventsCtrl', function($scope, EventService) {

 //GET RANDOM EVENTS
  function getEvents() {
    EventService.getEvents()
    // this callback will be called asynchronously
    // when the response is available
    .success(function(data /*, status, headers, config */) {
      $scope.events = data;
    })
    .error(function(/* data, status, headers, config */) {
      //alert('GET: error');
    });
  }

  getEvents();

  $scope.getEvent = function() {
    return EventService.getEvent()
    .success(function(data) {
      $scope.evnt = data;
    })
    .error(function(data/*, status*/) {
      console.log(data);
      //alert('EDIT ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };

  $scope.addEvents = function() {
    var newItinerary = { name: $scope.newItineraryName, 
                         date: $scope.newItineraryDate };
    var newEvents = $scope.events;

    //promise info   
    EventService.addEvents(newItinerary, newEvents)
    .success(function() {
      $scope.newItineraryName = null;
      $scope.newItineraryDate = null;
      //getItineraries();
    })
    .error(function(data/*, status*/) {
      console.log(data);
      //alert('SAVE ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };

  $scope.deleteEvent = function(index) {
    var evt = EventService.getEvent();
    var events = $scope.events;
    events.splice(index, 1, evt);
    $scope.events = events;

    return EventService.deleteEvent(index)
    .success(function() {
      //getEvents();
    })
    .error(function(data/*, status*/) {
      console.log(data);
      //alert('EDIT ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };

});
