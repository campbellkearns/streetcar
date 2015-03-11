'use strict';

/**
 * @ngdoc overview
 * @name streetCarApp
 * @description
 * # streetCarApp
 *
 * Main module of the application.
 */
angular
  .module('streetCarApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ui.router',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
      })
      .state('about', {
        url: '/about',
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl'
      });
      $urlRouterProvider.otherwise('home');
  });
