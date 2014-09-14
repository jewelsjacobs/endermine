"use strict"
angular.module("endermine").filter("time", ->
  (obj) ->
    +new Date(obj)
).filter "startFrom", ->
  (obj, index) ->
    obj and obj.slice(index)

