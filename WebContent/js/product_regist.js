$(document).ready(function() {
			
	
			$(document).on("keydown",'input[type="text"]',function(event) {
		  	if (event.keyCode === 13) {
			  event.preventDefault();
		  		};
			});
			var valArr1 = new Array();
			var valArr2 = new Array();
		
			
			$('#summernote').summernote();

		
			
			$('#imgSelector').change(function() {
				console.log(this);
				readURL(this);	
			})
				
		
			
			/* 혹시 몰라서 백업 해둔 것.
			$('#product_category li').on('click',function() {
				var url = "test";
				$('#btnCategory').html($(this).text()+' <span class="caret"></span>');		
				
				if($(this).text() == '의류'){
					url = "../common/product_options_clothes.jsp";
				}
				else 
					url = "../common/product_options_food.jsp";
						
				
				$.ajax({
					type : "GET",
					url : url,
					async : false,
					success : function(text) {
						response = text;
						$().append(text);
					}
				});
				
				$('.registProduct-group').html(response);
				
				
				$('.registProduct-group').load(url);
			});
			*/
			
			
			
			
			/* 성별 카테고리 설정 */
			$('#gender_ul li').on('click',function() {		
				$('#gender_category').html($(this).text()+' <span class="caret"></span>');		
				
			});
			
			/* 대분류 카테고리 설정 */
			$('#main_ul li').on('click',function() {
				$('#main_category').html($(this).text()+' <span class="caret"></span>');		
				
				/* 선택한 대분류에따라 하위 카테고리인 class_ul 아래에 
				 * 
				 * 
				 * 상의 - 반팔, 긴팔 , 셔츠
				 * 하의 - 반바지, 긴바지, 슬랙스
				 * 아우터 - 자켓, 패딩, 코트
				 * 원피스 - 원피스
				 * 악세사리 - 모자, 넥타이, 벨트
				 * 
				 * 
				 * 를 li로 추가해주어야함
				 *
				 * */
				$('#class_ul').empty();
				 switch($(this).text()){
				 
				 case '상의':{
					 $('#class_ul').append('<li><a href="javascript:void(0);">반팔</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">긴팔</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">셔츠</li>');
					 break;
				 }
				 
				 case '하의':{
					 $('#class_ul').append('<li><a href="javascript:void(0);">반바지</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">긴바지</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">슬랙스</li>');
					 break;
				 }
				 case '아우터':{
					 $('#class_ul').append('<li><a href="javascript:void(0);">자캣</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">패딩</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">코트</li>');
					 break;
				 }
				 case '원피스':{
					 $('#class_ul').append('<li><a href="javascript:void(0);">원피스</li>');
					 
					 break;
				 }
				 case '악세서리':{
					 $('#class_ul').append('<li><a href="javascript:void(0);">모자</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">넥타이</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">벨트</li>');
					 break;
				 }
			 
				 }	
			});
			
			// 동적 생성된 태그를 이벤트에 올리기위한 코드 매우 매우 유용하니 잘 쓰도록 하자.
			// document 를 써서  현재  페이지에 올라와 있는 태그들을 읽어 이벤트로 올린다.
			$(document).on('click','#class_ul li',function() {
				$('#class_category').html($(this).text()+' <span class="caret"></span>');			
				//console.log($('#class_category').text());
				//$('.registProduct-group').empty();
				$('.registProduct-group').load('../common/product_options_form.jsp');
			
			});
			
				
				
				$('#tagTest').on('click',function(){
					console.log('chk');
					valArr1 = [];
					valArr2 = [];
								
					
					var nodes1 = $('.insertedTag_1').children('input.tag');
					var nodes2 = $('.insertedTag_2').children('input.tag');
					
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
							'productPrice':$('#productPrice').val(),
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
