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

});
