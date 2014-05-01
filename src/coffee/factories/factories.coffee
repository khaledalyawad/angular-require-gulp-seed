define ['angular', 'app'], (angular, app)->
	return angular.module('app.factories', [])
		.factory "quotes", ->
			quotes = [
				content: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose."
				author: "Dr.Seuss"
			]
			quotes