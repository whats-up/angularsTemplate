myApp = angular.module('spicyApp1', [])
myApp.controller 'SpicyCtrl', ['$scope',($scope)->
  $scope.spice = 'very'
  $scope.chiliSpicy = () ->
    $scope.spice = 'chili'
  $scope.jalapenoSpicy = ()->
    $scope.spice = 'jalapeño'
  ]
