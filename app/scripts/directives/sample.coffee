"use strict"
angular.module("endermine").directive "ngHelloWorld", ->
  restrict: "EAC"
  scope: true
  compile: compile = (tElement, tAttrs) ->
    tElement.html "<span>hello {{name}}</span>"
    postLink = (scope, element, attrs, controller) ->
      scope.name = "world"
      return

