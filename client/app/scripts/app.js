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
    'ngTouch',
    'leaflet-directive',
    'ui.bootstrap'
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
        controller: 'MapCtrl'
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
      .state('itineraries-new', {
        url: '/itineraries/create',
        templateUrl: 'views/itineraries/new.html',
        controller: 'ItinerariesCtrl'
      })
      .state('itineraries-show', {
        url: 'itineraries/:id',
        templateUrl: 'views/itineraries/show.html',
        controller: 'ShowItineraryCtrl',
        onEnter: ['$state', 'AuthService', function($state, AuthService) {
          console.log('onEnter itineraries show');
              if (!AuthService.isAuthenticated()) {
                $state.go('home');
          }
        }]        
      })

      //Event Routes
      .state('events', {
        url: '/events/random',
        templateUrl: 'views/itineraries/new.html',
        controller: 'GetEventsCtrl',
        onEnter: ['$state', 'AuthService', function($state, AuthService) {
          console.log('onEnter itineraries show');
              if (!AuthService.isAuthenticated()) {
                $state.go('home');
         }
        }]        
      })
      .state('events-show', {
        url: 'events/:id',
        templateUrl: 'views/itineraries/show.html',
        controller: 'ShowItineraryEventsCtrl',
        onEnter: ['$state', 'AuthService', function($state, AuthService) {
          console.log('onEnter itineraries show');
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
      });
      $urlRouterProvider.otherwise('home');
  });
