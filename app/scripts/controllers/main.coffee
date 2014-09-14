"use strict"
angular.module("endermine").controller "MainCtrl", ($scope, $location, version) ->
  $scope.$path = $location.path.bind($location)
  $scope.version = version
  return

