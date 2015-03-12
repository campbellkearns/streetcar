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
  .config(function ($httpProvider, $stateProvider, $urlRouterProvider) {
    
    $httpProvider.defaults.withCredentials = true;

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
      .state('itineraries', {
        url: '/itineraries',
        templateUrl: 'views/itineraries/index.html',
        controller: 'ItinerariesCtrl',
        onEnter: ['$state', 'AuthService', function($state, AuthService) {
              if (!AuthService.isAuthenticated()) {
                $state.go('home');
          }
        }]
      })
      .state('login', {
          url: '/login',
          templateUrl: 'views/login.html',
          controller: 'AuthCtrl'
      })
      .state('register', {
          url: '/register',
          templateUrl: 'views/register.html',
          controller: 'AuthCtrl'
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
