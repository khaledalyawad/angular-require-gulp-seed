define ['angular', 'app', 'factories'], (angular, app)->
	return angular.module('app.controllers', ['app.factories'])
		.controller("QuoteCtrl", ($scope, $location, $routeParams, quotes) ->
			$scope.quotes = quotes
			return
		)
		.controller "AddQuoteCtrl", ($scope, $location, $routeParams, quotes) ->
			$scope.add = ->
				quotes.push
					content: $scope.quote.content
					author: $scope.quote.author
				$location.path "/"