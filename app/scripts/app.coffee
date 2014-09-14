"use strict"
angular.module("juli7168.GithubPrReport", [
  "ngAnimate"
  "ngCookies"
  "ngResource"
  "ngRoute"
  "ngSanitize"
  "ngTouch"
  "mgcrea.ngStrap"
]).constant("version", "v0.1.0").config ($locationProvider, $routeProvider) ->
  $locationProvider.html5Mode false
  $routeProvider.when("/",
    templateUrl: "views/home.html"
  ).when("/features",
    templateUrl: "views/features.html"
  ).when("/contact",
    templateUrl: "views/contact.html"
  ).otherwise redirectTo: "/"
  return

