define ['angular', 'app'], (angular, app)->
	return app.config(($routeProvider) ->
		$routeProvider.when("/",
			controller: "QuoteCtrl"
			templateUrl: "../views/home.html"
		).when("/quote/:action",
			controller: "AddQuoteCtrl"
			templateUrl: "../views/create.html"
		).otherwise redirectTo: "/"
	)