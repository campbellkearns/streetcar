'use strict';

angular.module('streetCarApp')
.service('ItineraryService', function($http) {

  this.getItineraries = function() {
    return $http.get('/api/itineraries');
  };

  this.getItinerary = function(id) {
    return $http.get('/api/itineraries/' + id);
  };

  this.addItinerary = function(itinerary, events) {
    return $http.post('/api/itineraries', { itinerary: itinerary , events: events } );
  };

  this.destroyItinerary = function(itinerary) {
    return $http.delete('/api/itineraries/' + itinerary.id);
  };

});