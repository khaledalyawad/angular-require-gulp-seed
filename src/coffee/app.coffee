define ["angular", "quote"], (angular, quote) ->
	return angular.module("app", ['ngRoute', 'quote']
	).factory("Quotes", ->
		quotes = [
			content: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose."
			author: "Dr.Seuss"
		]
		quotes
	).config(($routeProvider) ->
		$routeProvider.when("/",
			controller: "QuoteCtrl"
			templateUrl: "../views/home.html"
		).when("/quote/:action",
			controller: "AddQuoteCtrl"
			templateUrl: "../views/create.html"
		).otherwise redirectTo: "/"
		return
	).controller("QuoteCtrl", ($scope, $location, $routeParams, Quotes) ->
		$scope.quotes = Quotes
		return
	).controller "AddQuoteCtrl", ($scope, $location, $routeParams, Quotes) ->
		$scope.add = ->
			Quotes.push
				content: $scope.quote.content
				author: $scope.quote.author
			$location.path "/"
			return
		return
	return
