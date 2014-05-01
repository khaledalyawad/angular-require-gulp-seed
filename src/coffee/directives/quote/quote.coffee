define ['angular'], (angular)->
	angular.module('quote', [])
		.directive 'quote', ()->
			return {
				restrict: 'E'
				transclude: false
				scope: {}
				controller: ($scope, $element)->
					$scope.quote = $scope.$parent.quote
				templateUrl: 'directives/quote/quote.html'
				replace: true
			}