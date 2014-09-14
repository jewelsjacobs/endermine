"use strict"
angular.module("juli7168.GithubPrReport").filter("time", ->
  (obj) ->
    +new Date(obj)
).filter "startFrom", ->
  (obj, index) ->
    obj and obj.slice(index)

