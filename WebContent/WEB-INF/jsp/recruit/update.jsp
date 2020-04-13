<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>招聘信息编辑</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<link href="resource/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="resource/assets/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="resource/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css" href="resource/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
<link rel="stylesheet" type="text/css" href="resource/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<link href="resource/assets/global/css/components.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="resource/assets/admin/layout/css/themes/default.css" rel="stylesheet" type="text/css"/>
<link href="resource/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="favicon.ico"/>
<link rel="stylesheet" href="resource/artDialog/css/ui-dialog.css">
<script type="text/javascript" src="resource/js/jquery.js"></script>
<script src="resource/artDialog/dist/dialog-plus.js"></script>
<script type="text/javascript">
	function toSub(){
		var recruit_company=$("#recruit_company").val();
		var recruit_position=$("#recruit_position").val();
		var recruit_salary=$("#recruit_salary").val();
		var recruit_address=$("#recruit_address").val();
		var recruit_desc=$("#recruit_desc").val();
		var recruit_date=$("#recruit_date").val();
		var recruit_email=$("#recruit_email").val();
		if(recruit_company.trim().length==0){
			alert("公司名称不能为空，请重新输入");
			return false;
		}
		if(recruit_position.trim().length==0){
			alert("职位名称不能为空，请重新输入");
			return false;
		}
		if(recruit_salary.trim().length==0){
			alert("薪资待遇不能为空，请重新输入");
			return false;
		}
		if(recruit_address.trim().length==0){
			alert("工作地点不能为空，请重新输入");
			return false;
		}
		if(recruit_desc.trim().length==0){
			alert("详细信息不能为空，请重新输入");
			return false;
		}
		if(recruit_date.trim().length==0){
			alert("有效日期不能为空，请重新输入");
			return false;
		}
		if(recruit_email.trim().length==0){
			alert("招聘邮箱不能为空，请重新输入");
			return false;
		}
		$("#myForm").submit();
	}
</script>
</head>
<body>
		<div class="portlet box green ">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-gift"></i> 招聘信息
				</div>
							<div class="tools">
								<a href="" class="collapse">
								</a>
								<a href="#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="" class="reload">
								</a>
								<a href="" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
						
						
							<form class="form-horizontal" action="RecruitUpdateServlet.shxt" method="post" id="myForm">
								<div class="form-body">
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="公司名称" name="recruit_company" id="recruit_company" value="${recruit.recruit_company }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="职位名称" name="recruit_position" id="recruit_position" value="${recruit.recruit_position }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="number" class="form-control input-sm" placeholder="薪资待遇" name="recruit_salary" id="recruit_salary" value="${recruit.recruit_salary }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="工作地点" name="recruit_address" id="recruit_address" value="${recruit.recruit_address }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="工作描述" name="recruit_desc" id="recruit_desc" value="${recruit.recruit_desc }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="有效日期" name="recruit_date" id="recruit_date" value="${recruit.recruit_date }">
										</div>
									</div>
									<div class="form-group" style="height:25px">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="招聘邮箱" name="recruit_email" id="recruit_email" value="${recruit.recruit_email }">
										</div>
									</div>
								</div>
								<div class="form-actions right1">
									<button type="button" class="btn green" value="修改信息" onclick="toSub()">修改信息</button>
									<input id="recruit_id" name="recruit_id" type="hidden" value="${recruit.recruit_id }"/>
								</div>
							</form>
							
							
						</div>
					</div>
<script src="resource/assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="resource/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script type="text/javascript" src="resource/assets/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="resource/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="resource/assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
<script type="text/javascript" src="resource/assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
<script type="text/javascript" src="resource/assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
<script type="text/javascript" src="resource/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<script src="resource/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="resource/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="resource/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="resource/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="resource/assets/admin/pages/scripts/table-advanced.js"></script>
<script>
jQuery(document).ready(function() {       
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
   TableAdvanced.init();
});
</script>
</body>
</html>