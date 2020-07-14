$(document).ready(function() {
			
			var valArr1 = new Array();
			var valArr2 = new Array();
		
			
			$('#summernote').summernote();

		
			
			$('#imgSelector').change(function() {
				console.log(this);
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
					valArr1 = [];
					valArr2 = [];
					
					var path = $('#product_snapShot').attr("src");
					var src = Base64.encode("안녕하세요");
					console.log(src);
					console.log(Base64.decode(src));
					
					
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
							'valArr2':valArr2
				
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
			
			var src = Base64.decode(e.target.result);
			console.log(e.target.result);
			$('#product_snapShot').attr('src',e.target.result);
			
		}
		
		reader.readAsDataURL(input.files[0]);
	}
	
}


var Base64 = {
	    // private property
	    _keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
	 
	    // public method for encoding
	    encode : function (input) {
	        var output = "";
	        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
	        var i = 0;
	 
	        input = Base64._utf8_encode(input);
	 
	        while (i < input.length) {
	 
	            chr1 = input.charCodeAt(i++);
	            chr2 = input.charCodeAt(i++);
	            chr3 = input.charCodeAt(i++);
	 
	            enc1 = chr1 >> 2;
	            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
	            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
	            enc4 = chr3 & 63;
	 
	            if (isNaN(chr2)) {
	                enc3 = enc4 = 64;
	            } else if (isNaN(chr3)) {
	                enc4 = 64;
	            }
	 
	            output = output +
	            this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
	            this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
	 
	        }
	 
	        return output;
	    },
	 
	    // public method for decoding
	    decode : function (input) {
	        var output = "";
	        var chr1, chr2, chr3;
	        var enc1, enc2, enc3, enc4;
	        var i = 0;
	 
	        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
	 
	        while (i < input.length) {
	 
	            enc1 = this._keyStr.indexOf(input.charAt(i++));
	            enc2 = this._keyStr.indexOf(input.charAt(i++));
	            enc3 = this._keyStr.indexOf(input.charAt(i++));
	            enc4 = this._keyStr.indexOf(input.charAt(i++));
	 
	            chr1 = (enc1 << 2) | (enc2 >> 4);
	            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
	            chr3 = ((enc3 & 3) << 6) | enc4;
	 
	            output = output + String.fromCharCode(chr1);
	 
	            if (enc3 != 64) {
	                output = output + String.fromCharCode(chr2);
	            }
	            if (enc4 != 64) {
	                output = output + String.fromCharCode(chr3);
	            }
	 
	        }
	 
	        output = Base64._utf8_decode(output);
	 
	        return output;
	 
	    },
	 
	    // private method for UTF-8 encoding
	    _utf8_encode : function (string) {
	        string = string.replace(/\r\n/g,"\n");
	        var utftext = "";
	 
	        for (var n = 0; n < string.length; n++) {
	 
	            var c = string.charCodeAt(n);
	 
	            if (c < 128) {
	                utftext += String.fromCharCode(c);
	            }
	            else if((c > 127) && (c < 2048)) {
	                utftext += String.fromCharCode((c >> 6) | 192);
	                utftext += String.fromCharCode((c & 63) | 128);
	            }
	            else {
	                utftext += String.fromCharCode((c >> 12) | 224);
	                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
	                utftext += String.fromCharCode((c & 63) | 128);
	            }
	 
	        }
	 
	        return utftext;
	    },
	 
	    // private method for UTF-8 decoding
	    _utf8_decode : function (utftext) {
	        var string = "";
	        var i = 0;
	        var c = c1 = c2 = 0;
	 
	        while ( i < utftext.length ) {
	 
	            c = utftext.charCodeAt(i);
	 
	            if (c < 128) {
	                string += String.fromCharCode(c);
	                i++;
	            }
	            else if((c > 191) && (c < 224)) {
	                c2 = utftext.charCodeAt(i+1);
	                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
	                i += 2;
	            }
	            else {
	                c2 = utftext.charCodeAt(i+1);
	                c3 = utftext.charCodeAt(i+2);
	                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
	                i += 3;
	            }
	 
	        }
	 
	        return string;
	    }
	}
