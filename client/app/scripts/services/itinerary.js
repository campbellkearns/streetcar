'use strict';

angular.module('streetCarApp')
.service('ItineraryService', function($http) {

  this.getItineraries = function() {
    return $http.get('/api/itineraries');
  };

  this.getItinerary = function(itinerary) {
    return $http.get('/api/itineraries/' + itinerary.id, { itinerary: itinerary } );
  };

  this.addItinerary = function(itinerary) {
    return $http.post('/api/itineraries', { itinerary: itinerary } );
  };

  this.destroyItinerary = function(itinerary) {
    return $http.delete('/api/itineraries/' + itinerary.id);
  };

});