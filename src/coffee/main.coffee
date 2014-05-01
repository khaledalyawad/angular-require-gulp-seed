require.config
	paths:
		jquery: '../vendor/jquery/dist/jquery.min'
		angular: '../vendor/angular/angular.min'
		angularResource: '../vendor/angular-resource/angular-resource.min'
		angularRoute: '../vendor/angular-route/angular-route.min'
		quote: 'directives/quote/quote'
	shim:
		"angular":
			exports: "angular"
		"angularResource":
			exports: "angularResource"
			deps: ["angular"]
		"angularRoute":
			exports: "angularRoute"
			deps: ["angular"]

window.name = "NG_DEFER_BOOTSTRAP!"

require ['angular','angularResource', 'angularRoute', 'app'], (angular, angularResource, angularRoute, app)->

	$body = angular.element document.getElementsByTagName('body')[0]
	# important that 'name' matches the name given in your ng-app attribute.
	angular.element().ready ()->
		angular.resumeBootstrap [app['name']]