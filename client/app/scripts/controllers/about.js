'use strict';

/**
 * @ngdoc function
 * @name streetCarApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the streetCarApp
 */
angular.module('streetCarApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
