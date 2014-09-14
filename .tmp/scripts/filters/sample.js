(function() {
  "use strict";
  angular.module("juli7168.GithubPrReport").filter("time", function() {
    return function(obj) {
      return +new Date(obj);
    };
  }).filter("startFrom", function() {
    return function(obj, index) {
      return obj && obj.slice(index);
    };
  });

}).call(this);

//# sourceMappingURL=sample.js.map
