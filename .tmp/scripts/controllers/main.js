(function() {
  "use strict";
  angular.module("juli7168.GithubPrReport").controller("MainCtrl", function($scope, $location, version) {
    $scope.$path = $location.path.bind($location);
    $scope.version = version;
  });

}).call(this);

//# sourceMappingURL=main.js.map
