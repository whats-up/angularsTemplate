(function() {
  var myApp;

  myApp = angular.module('spicyApp1', []);

  myApp.controller('SpicyCtrl', [
    '$scope', function($scope) {
      $scope.spice = 'very';
      $scope.chiliSpicy = function() {
        return $scope.spice = 'chilis';
      };
      return $scope.jalapenoSpicy = function() {
        return $scope.spice = 'jalapeño';
      };
    }
  ]);

}).call(this);
