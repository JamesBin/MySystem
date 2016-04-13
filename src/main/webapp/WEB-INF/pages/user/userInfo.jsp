<%--
  @Author: 吴锡霖
  @File: userInfo.jsp
  @DATE: 2016/1/22
  @TIME: 16:26
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<style>
	.profile{ padding: 10px; }
	.roleList { overflow: auto; padding: 0 20px 20px; }
    .profile .btn-group.pull-right{ margin-top: -20px; }
    .roleList li{ float: left; background: #f0f0f0; width: 18%; margin-right: 2%; padding: 5px; border: 1px solid #ccc; }
</style>
<div class="main profile" id="userEditModal">
	<form class="form-horizontal">
		<div class="page-header">
			<h3>
				<span>基本信息</span>
			</h3>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">
				<span class="text-red">*</span>
				用户名：
			</label>
			<div class="col-sm-4">
				<input name="username" disabled="disabled" type="text" class="form-control" value="${operator.username}" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">
				<span class="text-red">*</span>
				真实姓名：
			</label>
			<div class="col-sm-4">
				<input name="realName" type="text" class="form-control" value="${operator.realName}" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">
				<span class="text-red">*</span>
				修改密码：
			</label>
			<div class="col-sm-4">
				<input name="password" value="${operator.password}" type="password" class="form-control" />
			</div>
			<div class="col-sm-5 help-block">默认为：登录密码</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">
				<span class="text-red">*</span>
				确认密码：
			</label>
			<div class="col-sm-4">
				<input name="confirm" value="${operator.password}" type="password" class="form-control" />
			</div>
		</div>
		<div class="page-header">
			<h3>
				<span>详细信息</span>
			</h3>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">工号：</label>
			<div class="col-sm-4">
				<input name="staffNo" value="${operator.staffNo}" type="text" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">所属单位：</label>
			<div class="col-sm-4">
				<input name="subsystem" value="${operator.subsystem}" type="text" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">手机：</label>
			<div class="col-sm-4">
				<input name="phone" value="${operator.phone}" type="text" class="form-control" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">邮箱：</label>
			<div class="col-sm-4">
				<div class="input-group">
					<span class="input-group-addon" id="sizing-addon2"> <i class="glyphicon glyphicon-envelope"></i>
					</span>
					<input name="email" value="${operator.email}" type="email" class="form-control" placeholder="email" aria-describedby="sizing-addon2"></div>
			</div>
		</div>
		<input type="hidden" name="valid" value="${operator.valid == true ? true : false}"/>
		<div class="page-header">
			<h3>
				<span>拥有角色</span>
			</h3>
		</div>
		<ul class="roleList">
			<!-- 当包含超级管理员权限时，只显示拥有该权限，不显示包含的其他的权限。 -->
			<c:if test="${operator.username == 'admin'}">
				<li> <i class="glyphicon glyphicon-user"></i>
					&nbsp;超级管理员
				</li>

				<c:forEach items="${roles}" var="role">
					<input type="hidden" name="roleIds" value="${role.id}"/>
				</c:forEach>
			</c:if>
			<c:if test="${operator.username != 'admin'}">
				<c:forEach items="${roles}" var="role" varStatus="status">
					<input type="hidden" name="roleIds" value="${role.id}"/>
					<li>
						<i class="glyphicon glyphicon-user"></i>
						&nbsp;${role.roleName}
					</li>
				</c:forEach>
			</c:if>
		</ul>
		<br>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
            	<input type="hidden" name="username" value="${operator.username}">
				<input type="hidden" name="id" value="${operator.id}">
                <button id="editSave" type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
	</form>
	
</div>

<%--<script type="text/javascript" src="${ctx}/assets/user/userManaged.js"></script>--%>
<script type="text/javascript">
    require(['UserManaged', 'jqtransform', 'jqueryValidate', 'jqueryForm'], function(UserManaged){
		$('.task-list').jqTransform();
		$(".tool-full").on("click",function(){
			var db = $(this).parents('.panel').parent();
			if(db.hasClass("col-sm-full")){
				db.removeClass("col-sm-full");
				db.siblings().show();
			}
			else{
				db.addClass("col-sm-full");
				db.siblings().hide();
			}
			if(db.find("table")){
				db.find(".home-panel").highcharts().reflow();
			}
		});
		$(".btn-group .btn").on("click",function(){
			if(!$(this).hasClass("btn-primary")){
				$(".btn-group .btn.btn-primary").attr("class","btn btn-default");
				$(this).attr("class","btn btn-primary");
				$(".caption").html($(this).html());
			}
		});
		UserManaged.userEdit();

    });
</script>