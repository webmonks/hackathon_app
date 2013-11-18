angular.module('HackathonApp', ['ui.bootstrap']);

var ModalCtrl = function ($scope, $modal, $log) {

  $scope.open = function () {

    var modalInstance = $modal.open({
      templateUrl: 'myModalContent.html',
      controller: ModalInstanceCtrl
    });

  };
};

var ModalInstanceCtrl = function ($scope, $modalInstance) {

  $scope.submit = function () {

    if($scope.myForm.$valid) {
      //do something
      $modalInstance.close($scope.selected.item);
    }

  };

};
