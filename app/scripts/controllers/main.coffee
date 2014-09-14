"use strict"
angular.module("juli7168.GithubPrReport").controller "MainCtrl", ($scope, $location, version) ->
  $scope.$path = $location.path.bind($location)
  $scope.version = version
  return

