angular.module('starter')

.controller 'TopicCtrl', ($scope, $ionicModal, $stateParams, Restangular) ->

  Restangular
    .one('topic', $stateParams.topicId)
    .get()
    .then (result) ->
      $scope.topic = result?.data

  angular.extend $scope,
    topic: null

