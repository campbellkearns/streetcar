'use strict';

angular.module('streetCarApp')
.service('EventService', function($http) {

  this.getEvents = function() {
    return $http.get('/api/events');
  };


});