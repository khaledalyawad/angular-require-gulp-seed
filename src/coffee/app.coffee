define ["angular", "angularResource", "angularRoute", "controllers", "quote"], (angular) ->
	return angular.module "app", ['ngRoute', "app.controllers", "quote"]