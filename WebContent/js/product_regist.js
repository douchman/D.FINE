$(document).ready(function() {
			
			$('#summernote').summernote();

			$('#addProductOpt').on('click', function() {
				var optCnt = $('#optCnt').val();
			
				optCnt = Number(optCnt);
				
				$.ajax({
					type : "GET",
					url : "../common/product_options_clothes.jsp",
					data:{
						'optCnt': optCnt
						
					},
					async : false,
					success : function(text) {
						response = text;
					}
				});
					
				if(optCnt < 3){
					$('.registProduct-group').append(response);
					optCnt++;
					$('#optCnt').val(optCnt);
				}
			})
			
			
			
			$('#imgSelector').change(function() {
				readURL(this);
				
			})
				
		
			
			
			$('#product_category li').on('click',function() {
				$('#btnCategory').html($(this).text()+' <span class="caret"></span>');			
			});
			
			
			
			
			$('#textarea input').on('keyup', function(e){
				
				   var key = e.which;
				   if(key == 188 || key == 13){
				      $('<button class="glyphicon glyphicon-remove"/>').html($(this).val().slice(0)).insertBefore($(this) );
				      $(this).val('').focus();
				   };
				});

			$('#textarea').on('click', 'button', function(e){
				   e.preventDefault();
				  $(this).remove();
				   return false;
				})
			
				
				
				
		});


function readURL(input) {
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.onload= function(e) {
			$('#product_snapShot').attr('src',e.target.result);
			
		}
		
		reader.readAsDataURL(input.files[0]);
	}
	
}