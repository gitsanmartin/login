console.log('inicia Services');

app.factory("Data", ['$http', 'toaster',
	function ($http, toaster) {
		// cambiar para usar el servicio basico de Slim
		var serviceBase = 'api/';

		var obj = {};
		obj.toast = function (data) {
			toaster.pop(data.status, "", data.message, 10000, 'trustedHtml');
		}//porque este no tiene ";"
		obj.get = function (q){
			return $http.get(serviceBase + q).then(function (result) {
				return result.data;
			});
		};
		obj.post = function (q, object) {
			return $http.post(serviceBase + q, object).then(function (result){
				return result.data;
			});
		};
		obj.put = function(q, object){
			return $http.put(serviceBase + q, object).then(function (result){
				return result.data;
			});
		};
		obj.delete = function (q) {
			return $http.delete(serviceBase + q).then(function (result){
				return result.data;
			});
		};

		return obj;
	}
]);