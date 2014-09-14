(function() {
  "use strict";
  angular.module("juli7168.GithubPrReport").directive("ngHelloWorld", function() {
    var compile;
    return {
      restrict: "EAC",
      scope: true,
      compile: compile = function(tElement, tAttrs) {
        var postLink;
        tElement.html("<span>hello {{name}}</span>");
        return postLink = function(scope, element, attrs, controller) {
          scope.name = "world";
        };
      }
    };
  });

}).call(this);

//# sourceMappingURL=sample.js.map
