<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
     <%
    	String path = request.getContextPath();
    %>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="<%=path %>/images/favicon.png" type="image/png">

  <title>房号修改</title>

  <link href="<%=path %>/css/style.default.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body style="background-color: white">
	<div class="pageheader">
	<h2><i class="glyphicon glyphicon-user"></i> 房号管理<span>房号修改</span></h2>
		<div class="breadcrumb-wrapper">
			<span class="label"><a href="javascript:void(0);" id="back">返回</a></span>
		</div>
	
</div>
    <div class="contentpanel">
      <!-- content goes here... -->
		<div class="panel panel-default">
			<div class="panel-body panel-body-nopadding">
			  
			  <form class="form-horizontal form-bordered" method="post" action="<%=path %>/room/updatesave" id="form1"  >
 				<input type="hidden" name="agency_id" value="${agency_id }">
 				<input type="hidden" name="room.id" value="${room.id }">
				<input type="hidden" name="room.house_id" value="${room.house_id }">
				<input type="hidden" name="room.building_id" value="${room.building_id }">
				<input type="hidden" name="room.sale_status" value="${room.sale_status }">
				<div class="form-group" id="div1">
					  <label class="col-sm-3 control-label">房号名称：</label>
					 	 <div class="col-sm-4">
							<input type="text" id="name" value="${room.name}" name="room.name" placeholder="房号名称" data-placement="right" title="请输入房号名称" class="form-control tooltips">
					  	</div>
					  <div class="col-sm-4 tips"></div>
				</div>
				
				<div class="form-group">
				  <label class="col-sm-3 control-label"></label>
				  <div class="col-sm-7">
						<button class="btn btn-primary btn-lg" id="btn_house"> 提 交 </button>&nbsp;
						<a href="<%=path%>/room/strap?agency_id=${agency_id }" class="btn btn-default btn-lg" > 取消 </a>
				  </div>
				</div>
				
				<br/>
			   
			  </form>
			  
			</div><!-- panel-body -->
		
			
		</div>
	</div>
    
  
  


<script src="<%=path %>/js/jquery-1.11.1.min.js"></script>
<script src="<%=path %>/js/jquery-migrate-1.2.1.min.js"></script>
<script src="<%=path %>/js/jquery-ui-1.10.3.min.js"></script>
<script src="<%=path %>/js/bootstrap.min.js"></script>
<script src="<%=path %>/js/modernizr.min.js"></script>
<script src="<%=path %>/js/jquery.sparkline.min.js"></script>
<script src="<%=path %>/js/toggles.min.js"></script>
<script src="<%=path %>/js/retina.min.js"></script>
<script src="<%=path %>/js/jquery.cookies.js"></script>


<script src="<%=path %>/js/jquery.autogrow-textarea.js"></script>
<script src="<%=path %>/js/bootstrap-timepicker.min.js"></script>
<script src="<%=path %>/js/jquery.maskedinput.min.js"></script>
<script src="<%=path %>/js/jquery.tagsinput.min.js"></script>
<script src="<%=path %>/js/jquery.mousewheel.js"></script>
<script src="<%=path %>/js/select2.min.js"></script>
<script src="<%=path %>/js/dropzone.min.js"></script>
<script src="<%=path %>/js/colorpicker.js"></script>
<script type="text/javascript">

	
	$(function(){
		$('#name').focus(function(){
			if($(this).val().length==0){
				$(this).parent().next("div").text("请输入房号");
				$(this).parent().next("div").css("color",'#1CAF9A');
			}
		})
		
		$('#name').blur(function(){
			if($('#name').val().length==0){
				$('#name').parent().next("div").text("");
				$('#name').parent().next("div").css("color",'#ccc');
			}else{
				document.getElementById( "div1" ).className = "form-group has-success"; 
				$(this).parent().next("div").text("");
			}		
		})
		
		$("#btn_room").click(function(e){	
			if($("#name").val().length==0){
				$('#name').focus();
				$('#name').parent().next(".tips").text("房号名称不能为空");
				$('#name').parent().next(".tips").css("color",'red');
				document.getElementById( "div1" ).className = "form-group has-error";
				e.preventDefault();
				return;
			}else{
				$('#name').parent().next("div").text("");
				document.getElementById( "div1" ).className = "form-group has-success";
			}
		})
		
	});
</script>
</body>
</html>
