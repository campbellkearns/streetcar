'use strict';

angular.module('streetCarApp')
.controller('GetEventsCtrl', function($scope, EventService, $state) {

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
    return EventService.getEvent()
    .success(function(data) {
      $scope.evnt = data;
    })
    .error(function(data) {
      console.log(data);
    });
  };

  $scope.addEvents = function() {
    var newItinerary = { name: $scope.newItineraryName, 
                         date: $scope.newItineraryDate };
    var newEvents = $scope.events;
 
    EventService.addEvents(newItinerary, newEvents)
    .success(function(data) {
      $scope.newItineraryName = null;
      $scope.newItineraryDate = null;
      $state.go('itineraries-show', {id: data.id});
    })
    .error(function(/*data, status*/) {
      alert('PLEASE ENTER ITINERARY NAME AND DATE');
    });
  };

  $scope.deleteEvent = function(index) {
    EventService.getEvent()
      .success(function(data){
        $scope.events[index] = data;
      });
  };
});