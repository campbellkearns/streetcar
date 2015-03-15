'use strict';

angular.module('streetCarApp')
.controller('ItinerariesCtrl', function($scope, ItineraryService) {

  function getItineraries() {
    ItineraryService.getItineraries()
    // this callback will be called asynchronously
    // when the response is available
    .success(function(data /*, status, headers, config */) {
      $scope.itineraries = data;
    })
    .error(function(/* data, status, headers, config */) {
      //alert('GET: error');
    });
  }

  getItineraries();

  //ADDING AN ITINERAY [NEW/CREATE]
  $scope.addItinerary = function() {
    var newItinerary = { name: $scope.newItineraryName, 
                         date: $scope.newItineraryDate };
    var newEvents = $scope.events;

    //promise info   
    ItineraryService.addItinerary(newItinerary, newEvents)
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

  //DESTROY Itineraries
  $scope.destroyItinerary = function(itinerary) {
    ItineraryService.destroyItinerary(itinerary)
    .success(function() {
      getItineraries();
    })
    .error(function(data/*, status*/) {
      console.log(data);
      //alert('DESTROY ERROR: ' + status + ' : ' + JSON.stringify(data));
    });
  };


  });