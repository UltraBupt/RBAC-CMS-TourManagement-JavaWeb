<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<title>会员类型编辑</title>
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
		var memberType_name=$("#memberType_name").val();
		var old_memberType_name=$("#old_memberType_name").val();
		var memberType_number=$("#memberType_number").val();
		var memberType_desc=$("#memberType_desc").val();
		var memberType_benefit=$("#memberType_benefit").val();
		if(memberType_number.trim().length==0){
			alert("会员升级次数不能为空，请重新输入");
			return false;
		}
		if(memberType_desc.trim().length==0){
			alert("会员类型描述不能为空，请重新输入");
			return false;
		}
		if(memberType_benefit.trim().length==0){
			alert("会员类型折扣不能为空，请重新输入");
			return false;
		}
		if(memberType_name.trim().length==0){
			alert("会员名称不能为空，请重新输入");
		}else{
			if(memberType_name.trim()==old_memberType_name){
				$("#myForm").submit();
			}else{
				$.post("CheckMemberTypeNameServlet.shxt",{memberType_name:memberType_name},function(data){
					if(data.flg){
						$("#myForm").submit();
					}else{
						alert(data.message);
						$("#memberType_name").focus();
					}
				},"json");
			}
		}
	}
</script>
</head>
<body>
		<div class="portlet box blue ">
			<div class="portlet-title">
				<div class="caption">
					<i class="fa fa-gift"></i> 会员类型信息
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
						
						
							<form class="form-horizontal" action="MemberTypeUpdateServlet.shxt" method="post" id="myForm">
								<div class="form-body">
									<div class="form-group">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="会员类型名称" name="memberType_name" id="memberType_name" value="${memberType.memberType_name }">
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-9">
											<input type="number" class="form-control input-sm" placeholder="会员升级次数" name="memberType_number" id="memberType_number" value="${memberType.memberType_number }">
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-9">
											<input type="text" class="form-control input-sm" placeholder="会员类型描述" name="memberType_desc" id="memberType_desc" value="${memberType.memberType_desc }">
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-9">
											<input type="number" class="form-control input-sm" placeholder="会员类型折扣" name="memberType_benefit" id="memberType_benefit" value="${memberType.memberType_benefit }">
										</div>
									</div>
								</div>
								<div class="form-actions right1">
									<button type="button" class="btn blue" value="修改信息" onclick="toSub()">修改信息</button>
									<input id="memberType_id" name="memberType_id" type="hidden" value="${memberType.memberType_id }"/>
									<input id="old_memberType_name" name="old_memberType_name" type="hidden" value="${memberType.memberType_name }"/>
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