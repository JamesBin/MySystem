<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 吴锡霖
  Date: 2014/8/6
  Time: 14:48
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div class="main" id="userEditModal">
    <div class="page-header">
        <h3>
            <span>编辑用户</span>
        </h3>
    </div>
    <form action="#" class="form-horizontal">
        <div class="form-body">
            <!--/row-->
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">账号</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <p class="form-control-static">${user.username}</p>
                                <input type="hidden" name="username" value="${user.username}">
                                <input type="hidden" name="id" value="${user.id}">
                            </div>
                        </div>
                    </div>
                </div>
                <!--/span-->
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">真实姓名<span class="required"> * </span></label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.realName}" type="text" class="form-control" placeholder="真实姓名" name="realName">
                            </div>
                        </div>
                    </div>
                </div>
                <!--/span-->
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">密码<span class="required"> * </span></label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.password}" type="password" class="form-control" name="password">
                            </div>
                        </div>
                    </div>
                </div>
                <!--/span-->
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">确认密码<span class="required"> * </span></label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.password}" type="password" class="form-control" name="confirm">
                            </div>
                        </div>
                    </div>
                </div>
                <!--/span-->
            </div>
            <div class="form-section"></div>
            <!--/row-->
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">工号</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.staffNo}" type="text" class="form-control" placeholder="员工工号" name="staffNo">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">手机</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.phone}" type="text" class="form-control" placeholder="手机" name="phone">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">邮箱</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input value="${user.email}" type="text" class="form-control" placeholder="例: xxx@xx.com" name="email">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--/row-->
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">性别</label>
                        <div class="col-md-8">
                            <div class="radio-list">
                                <label class="radio-inline">
                                    <input ${user.sex == '男' ? 'checked' : ''} type="radio" name="sex" value="男"/>
                                    男 </label>
                                <label class="radio-inline">
                                    <input ${user.sex == '女' ? 'checked' : ''} type="radio" name="sex" value="女"/>
                                    女 </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">启用状态</label>
                        <div class="col-md-8">
                            <div class="radio-list">
                                <label class="radio-inline">
                                    <input ${user.valid ? 'checked' : ''} type="radio" name="valid" value="true" checked/>
                                    启用 </label>
                                <label class="radio-inline">
                                    <input ${!user.valid ? 'checked' : ''} type="radio" name="valid" value="false"/>
                                    禁用 </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-section"></div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label style="width: 12.77%;" class="control-label col-md-2">角色</label>
                        <div class="col-md-10">
                            <div class="checkbox-list">
                                <c:forEach items="${roles}" var="role" varStatus="status">
                                    <div class="col-md-3">
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="roleIds" value="${role.id}"/>
                                                ${role.roleName} </label>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <div class="form-group">
        <div class="col-sm-offset-1 col-sm-10">
            <button id="editSave" type="button" class="btn btn-primary">保存</button>
            <%--<button type="submit" class="btn btn-default btn-long">保存</button>--%>
            <button ng-click="closeTab('user.edit')" type="button" class="btn btn-default">关闭</button>
        </div>
    </div>
</div>

<%--<script type="text/javascript" src="${ctx}/assets/user/userManaged.js"></script>--%>

<script>
    require(['UserManaged', 'jqtransform', 'jqueryValidate', 'jqueryForm', 'multiSelect', 'dataTablesBootstrap'], function(UserManaged){
        $('form').jqTransform();
        UserManaged.userEdit();
    });
</script>
