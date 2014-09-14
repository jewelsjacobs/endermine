"use strict"
angular.module("endermine", [
  "ngAnimate"
  "ngCookies"
  "ngResource"
  "ngRoute"
  "ngSanitize"
  "ngTouch"
  "mgcrea.ngStrap"
]).constant("version", "v0.1.0").config ($locationProvider, $routeProvider) ->
  $locationProvider.html5Mode true
  $routeProvider.when("/",
    templateUrl: "views/server.html"
  ).when("/vip",
    templateUrl: "views/vip.html"
  ).when("/vip_plus",
    templateUrl: "views/vip_plus.html"
  ).otherwise redirectTo: "/"
  return

