"use strict"
angular.module("juli7168.GithubPrReport").directive "ngHelloWorld", ->
  restrict: "EAC"
  scope: true
  compile: compile = (tElement, tAttrs) ->
    tElement.html "<span>hello {{name}}</span>"
    postLink = (scope, element, attrs, controller) ->
      scope.name = "world"
      return

