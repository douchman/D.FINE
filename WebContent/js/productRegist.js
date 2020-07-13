$(document).ready(function() {
			$('#addProductOpt').on('click',function(){
				
				$('.registProduct-group').append(load("../common/product_options.jsp"));
				
			})
		});