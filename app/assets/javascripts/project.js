angular.module('HackathonApp', ['ui.bootstrap']);

var ModalCtrl = function ModalCtrl($scope, $modal, $log) {

  $scope.open = function () {

    var modalInstance = $modal.open({
    templateUrl: 'myModalContent.html',

      controller: ModalInstanceCtrl
    });

  };
};

var ModalInstanceCtrl = function ($scope, $modalInstance) {
  console.log('ksjskjs');
  $scope.submit = function () {

    if($scope.myForm.$valid) {

      $modalInstance.close($scope.selected.item);
    }

  };

};
