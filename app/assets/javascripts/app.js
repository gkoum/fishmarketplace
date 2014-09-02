function Hello($scope, $http) {
    $http.get('http://localhost:3000/users/1').
        success(function(data) {
            $scope.user = data;
        });
}

(function() {
  var app = angular.module('marketPlace', ['store-directives']);

  app.controller('StoreController', [ '$http' , function($http){
    var store = this;
    store.products = [];
    $http.get('http://localhost:3000/users/1').
        success(function(data) {
            $scope.user = data;
        });
  }]);

  app.controller('ReviewController', function() {
    this.review = {};

    this.addReview = function(product) {
      product.reviews.push(this.review);

      this.review = {};
    };
  });
})();