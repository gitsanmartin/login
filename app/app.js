'use strict';
console.log('inicia App');

var app = angular.module('myApp', [ 'ngRoute', 'ngAnimate', 'toaster']);

app.config(['$routeProvider', function ($routeProvider) {

	$routeProvider
	.when('/login', {
		title: 'Login',
		templateUrl: 'app/views/login.html',
		controller: 'altoControlador' 
	})
	.when('/logout', {
		title: 'Logout',
		templateUrl: 'app/views/login.html',
		controller: 'logoutCtrl' 
	})
	.when('/signup', {
		title: 'Signup',
		templateUrl: 'app/views/signup.html',
		controller: 'altoControlador' 
	})
	.when('/dashboard', {
		title: 'Dashboard',
		templateUrl: 'app/views/dashboard.html',
		controller: 'altoControlador' 
	})
	.when('/', {
		title: 'Login',
		templateUrl: 'app/views/login.html',
		controller: 'altoControlador',
		role: '0' 
	})
	.otherwise({
		redirectTo: '/login'
	});

}]);

app.run(function ($rootScope, $location, Data){
	$rootScope.$on("$routeChangeStart", function (event, next, current){
		$rootScope.authenticated = false;
		Data.get('session').then(function (results){
			if (results.uid) {
				$rootScope.authenticated = true;
				$rootScope.uid = results.uid;
				$rootScope.name = results.name;
				$rootScope.email = results.email;
				//datos para mostrar por scope a las vista
			} else {
				var nextUrl = next.$$route.originalPath;
				if (nextUrl == '/signup' || nextUrl == '/login') {

				} else {
					$location.path("/login");
				}
			}
			if ($rootScope.authenticated){
				$location.path("/dashboard");
				console.log("true, session abierta...  Solucionado");
			} else {
				console.log("false, no tiene session abierta");
			}
		});
	})
});