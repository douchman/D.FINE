$(document).ready(function() {
			
			var valArr1 = new Array();
			var valArr2 = new Array();
		
			
			$('#summernote').summernote();

		
			
			$('#imgSelector').change(function() {
				readURL(this);	
			})
				
		
			
			
			$('#product_category li').on('click',function() {
				var url = "test";
				$('#btnCategory').html($(this).text()+' <span class="caret"></span>');		
				
				if($(this).text() == '의류'){
					url = "../common/product_options_clothes.jsp";
				}
				else 
					url = "../common/product_options_food.jsp";
						
				/*
				$.ajax({
					type : "GET",
					url : url,
					async : false,
					success : function(text) {
						response = text;
					}
				});
				
				$('.registProduct-group').html(response);
				*/
				
				$('.registProduct-group').load(url);
			});
			
			
			
			
			$('.tagArea input').on('keyup', function(e){
				
				   var key = e.which;
				   if(key == 188 || key == 13){
				      $('<button class="glyphicon glyphicon-remove"/>').html($(this).val().slice(0)).insertBefore($(this) );
				      $(this).val('').focus();
				   };
				});

			$('.tagArea').on('click', 'button', function(e){
				   e.preventDefault();
				  $(this).remove();
				   return false;
				})
			
				
				
				$('#tagTest').on('click',function(){
					console.log('chk');
					var nodes1 = $('.insertedTag_1').children('button.tag');
					var nodes2 = $('.insertedTag_2').children('button.tag');
					
					for(i=0; i<nodes1.length; i++){
						valArr1.push(nodes1.eq(i).val());
					}
					for(i=0; i<nodes2.length; i++){
						valArr2.push(nodes2.eq(i).val());
						
					}
					
					$.ajax({
						type 	: 		"GET",
						url		:	 	"../test/testRes2.jsp",
						traditional	:	true,
						data	:{
							'productName':$('#productName').val(),
							'price':$('#price').val(),
							'valArr1':valArr1,
							'valArr2':valArr2,						
						},
						success :		function(data) {
							$('.result_area').html(data);
						},	
						
						error 	: function(data) {
							console.log(data);
							
						}
					})
									
				})
				
				
				
		});

function test(e) {
	var key = e.which;
	if (key == 188 || key == 13) {
		$('<button class="glyphicon glyphicon-remove"/>').html(
				$(this).val().slice(0)).insertBefore($(this));
		$(this).val('').focus();
	}
	;
}

function test2(e){
	
	 e.preventDefault();
	  $(this).remove();
	   return false;
	
}

function readURL(input) {
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.onload= function(e) {
			$('#product_snapShot').attr('src',e.target.result);
			
		}
		
		reader.readAsDataURL(input.files[0]);
	}
	
}