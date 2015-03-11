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
      })
      //Itinerary Routes
      .state('new', {
        url: '/new',
        templateUrl: 'views/itineraries/new.html',
        controller: 'ItinerariesCtrl'
      })
      .state('show', {
        url: '/show',
        templateUrl: 'views/itineraries/show.html',
        controller: 'ItinerariesCtrl'
      })
      .state('index', {
        url: '/index',
        templateUrl: 'views/itineraries/index.html',
        controller: 'ItinerariesCtrl'
      });
      $urlRouterProvider.otherwise('home');
  });
