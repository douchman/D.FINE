<%@ page language="java" pageEncoding="EUC-KR"%>


<div class="stepSubTitle">

	<span data-tooltip-text="�Է�â��  'Enter' �Ǵ� ','Ű�� �����Ͽ�  �±׸� �ۼ��մϴ�. �ۼ��� �±״� �ش� ��ǰ�� �ɼ����� �����˴ϴ�.">
	*�Ƿ� �ɼ� ����( 'Enter' �Ǵ� ','�� ���� )</span>

</div>



<div class="input-group">
	<label class="stepSubTitle">��ǰ ������</label> 
	<div style="margin-bottom: 10px;" class="tagArea_1"><input type="text"/></div>
	<label>����� ������ �±�</label> 
	<div class="insertedTag_1"></div>
	
</div>
<hr/>
<div class="input-group">
	<label class="stepSubTitle">��ǰ ����</label> 
	<div style="margin-bottom: 10px;" class="tagArea_2"><input type="text"/></div>
	<label>����� ���� �±�</label>
	<div class="insertedTag_2"></div>
</div>


<script>
$(document).ready(function() {
	$('.tagArea_1 input').on('keyup', function(e){
		
		   var key = e.which;
		   if(key == 188 || key == 13){
			   $('.insertedTag_1').append($('<button class="tag glyphicon glyphicon-remove" value="' +$(this).val()+'"/>').html($(this).val().slice(0)));
		      $(this).val('').focus();
		   };
		});

	$('.insertedTag_1').on('click', 'button', function(e){
		   e.preventDefault();
		  $(this).remove();
		   return false;
		})
		
		$('.tagArea_2 input').on('keyup', function(e){
		
		   var key = e.which;
		   if(key == 188 || key == 13){
			   $('.insertedTag_2').append($('<button class="tag glyphicon glyphicon-remove" value="' +$(this).val()+'"/>').html($(this).val().slice(0)));
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