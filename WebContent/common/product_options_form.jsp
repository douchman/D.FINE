<%@ page language="java" pageEncoding="EUC-KR"%>



<% %>





<div class="stepSubTitle">

	<span data-tooltip-text="�Է�â��   ','Ű�� �����Ͽ�  �±׸� �ۼ��մϴ�. �ۼ��� �±״� �ش� ��ǰ�� �ɼ����� �����˴ϴ�.">
	*�Ƿ� �ɼ� ����( ','�� ����  )</span>

</div>



<div class="input-group">
	<label class="stepSubTitle">��ǰ ������</label> 
	<div style="margin-bottom: 10px;" class="tagArea_1"><input class="tagField1" type="text"/></div>
	<span data-tooltip-text="������ �±׸� Ŭ���Ͽ� ���� �� �ֽ��ϴ�.">����� ������ �±�</span> 
	<div class="insertedTag_1"></div>
	
</div>
<hr/>
<div class="input-group">
	<label class="stepSubTitle">��ǰ ����</label> 
	<div style="margin-bottom: 10px;" class="tagArea_2"><input class="tagField2" type="text"/></div>
	<span data-tooltip-text="������ �±׸� Ŭ���Ͽ� ���� �� �ֽ��ϴ�.">����� ���� �±�</span>
	<div class="insertedTag_2"></div>
</div>


<script>
$(document).ready(function() {
	$('.tagArea_1 .tagField1').on('keyup', function(e){
			//console.log( 'val:' + $(this).val());
			//console.log( 'val length:' + $(this).val().length);
			console.log( 'val:' + $(this).val().slice(0,($(this).val().length)-1));
		   var key = e.which;
		   if(key == 188){
			   var txt =  $(this).val().slice(0,($(this).val().length)-1)
			   $('.insertedTag_1').append($('<input type="button" class="tag glyphicon glyphicon-remove" value="' + txt +'"/>').html(txt));
		      $(this).val('').focus();
		   };
		});

	$('.insertedTag_1').on('click', 'input', function(e){
		   e.preventDefault();
		   console.log($(this).val());
		  $(this).remove();
		  
		   return false;
		})
		
		$('.tagArea_2 .tagField2').on('keyup', function(e){
		
		   var key = e.which;
		   if(key == 188){
			   var txt =  $(this).val().slice(0,($(this).val().length)-1)
			   $('.insertedTag_2').append($('<input type="button" class="tag glyphicon glyphicon-remove" value="' + txt +'"/>').html(txt));
		      $(this).val('').focus();
		   };
		});

	$('.insertedTag_2').on('click', 'input', function(e){
		   e.preventDefault();
		  $(this).remove();
		   return false;
		})
	
});

</script>