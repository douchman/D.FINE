<%@ page language="java" pageEncoding="EUC-KR"%>



<% %>





<div class="stepSubTitle">

	<span data-tooltip-text="입력창에   ','키로 구분하여  태그를 작성합니다. 작성된 태그는 해당 물품의 옵션으로 설정됩니다.">
	*의류 옵션 설정( 'Enter' 또는 ','로 구분 )</span>

</div>



<div class="input-group">
	<label class="stepSubTitle">물품 사이즈</label> 
	<div style="margin-bottom: 10px;" class="tagArea_1"><input class="tagField1" type="text"/></div>
	<label>적용된 사이즈 태그</label> 
	<div class="insertedTag_1"></div>
	
</div>
<hr/>
<div class="input-group">
	<label class="stepSubTitle">물품 색상</label> 
	<div style="margin-bottom: 10px;" class="tagArea_2"><input class="tagField2" type="text"/></div>
	<label>적용된 색상 태그</label>
	<div class="insertedTag_2"></div>
</div>


<script>
$(document).ready(function() {
	$('.tagArea_1 .tagField1').on('keyup', function(e){
		
		   var key = e.which;
		   if(key == 188 || key == 13){
			   $('.insertedTag_1').append($('<button class="tag glyphicon glyphicon-remove" value="' +$(this).val()+'"/>').html($(this).val().slice(0,-1)));
		      $(this).val('').focus();
		   };
		});

	$('.insertedTag_1').on('click', 'button', function(e){
		   e.preventDefault();
		  $(this).remove();
		   return false;
		})
		
		$('.tagArea_2 .tagField2').on('keyup', function(e){
		
		   var key = e.which;
		   if(key == 188 || key == 13){
			   $('.insertedTag_2').append($('<button class="tag glyphicon glyphicon-remove" value="' +$(this).val()+'"/>').html($(this).val().slice(0,-1)));
		      $(this).val('').focus();
		   };
		});

	$('.insertedTag_2').on('click', 'button', function(e){
		   e.preventDefault();
		  $(this).remove();
		   return false;
		})
	
});

</script>