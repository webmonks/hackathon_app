angular.module('HackathonApp', []);

var MainCtrl = function($scope) {
  $scope.projects = window.projects;
}

var ProjectCtrl = function($scope) {
  $scope.vote = function(project_id) {
    alert(project_id);
    $scope.isVoting = true;
  }

  $scope.cancel = function(project_id) {
    $scope.isVoting = false;
  }

  $scope.submitVote = function(token) {

  }
}

