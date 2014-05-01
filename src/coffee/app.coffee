define ["angular", "angularResource", "angularRoute", "controllers", "directives"], (angular) ->
	return angular.module "app", ['ngRoute', "app.controllers", "app.directives"]