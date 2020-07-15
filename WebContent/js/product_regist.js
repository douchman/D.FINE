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
						
				if($(this).text() == '남성의류')
					$('#productCode1').val("101");
				else
					$('#productCode1').val("102");
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
					 $('#productCode2').val("A");
					 $('#class_ul').append('<li><a href="javascript:void(0);">반팔</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">긴팔</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">셔츠</li>');
					 break;
				 }
				 
				 case '하의':{
					 $('#productCode2').val("B");
					 $('#class_ul').append('<li><a href="javascript:void(0);">반바지</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">긴바지</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">슬랙스</li>');
					 break;
				 }
				 case '아우터':{
					 $('#productCode2').val("C");
					 $('#class_ul').append('<li><a href="javascript:void(0);">자캣</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">패딩</li>');
					 $('#class_ul').append('<li><a href="javascript:void(0);">코트</li>');
					 break;
				 }
				 case '원피스':{
					 $('#productCode2').val("D");
					 $('#class_ul').append('<li><a href="javascript:void(0);">원피스</li>');
					 
					 break;
				 }
				 case '악세서리':{
					 $('#productCode2').val("E");
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
				
				switch($(this).text()){
				case '반팔':
					 $('#productCode3').val("211");
					break;
				case '긴팔':
					$('#productCode3').val("212");
					break;
				case '셔츠':
					$('#productCode3').val("213");
					break;
				case '반바지':
					$('#productCode3').val("2221");
					break;
				case '긴바지':
					$('#productCode3').val("222");
					break;
				case '슬랙스':
					$('#productCode3').val("223");
					break;
				case '자켓':
					$('#productCode3').val("231");
					break;
				case '패딩':
					$('#productCode3').val("232");
					break;
				case '코트':
					$('#productCode3').val("233");
					break;
				case '원피스':
					$('#productCode3').val("241");
					break;
				case '모자':
					$('#productCode3').val("251");
					break;
				case '넥타이':
					$('#productCode3').val("252");
					break;
				case '벨트':
					$('#productCode3').val("253");
					break;
				}
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
					
					$('#colors').val(valArr2);
					$('#size').val(valArr1);
					
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
					
			$('#product_snapShot').attr('src',e.target.result);	
		}
		
		reader.readAsDataURL(input.files[0]);
	}
	
}


function registProduct() {
	
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
	
	$("#productRegistForm").ajaxForm({
        url : "../test/testRes3.jsp",
        enctype : "multipart/form-data",   
        error : function(){
            alert("에러") ;
        },
        success : function(result){
            alert("성공") ;
            console.log("성공");
            $('.result_area').html(result);
            //console.log(result);
        }
    });

    $("#productRegistForm").submit() ;
	
	
}