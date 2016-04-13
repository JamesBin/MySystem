<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 吴锡霖
  Date: 2014/8/6
  Time: 14:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="main" id="roleAddModal">
    <div class="page-header">
        <h3>
            <span>添加角色</span>
        </h3>
    </div>
    <form action="#" class="form-horizontal">
        <div class="form-body">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">角色编码<span class="required">*</span></label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" class="form-control" placeholder="例：ROLE_XXX" name="name">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">角色名<span class="required">*</span></label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" class="form-control" placeholder="角色名" name="roleName">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">优先级</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" class="form-control" placeholder="优先级" name="priority">
                                <span class="help-block">数值越低优先级越高</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="control-label col-md-3">描述</label>
                        <div class="col-md-8">
                            <div class="input-icon right">
                                <i class="fa"></i>
                                <input type="text" class="form-control" placeholder="描述" name="remark">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="form-group">
        <div class="col-sm-offset-1 col-sm-10">
            <button id="addSave" type="button" class="btn btn-primary">保存</button>
            <button ng-click="closeTab('role.create')" type="button" class="btn btn-default">关闭</button>
            <%--<button type="submit" class="btn btn-default btn-long">保存</button>--%>
            <%--<button type="button" class="btn btn-default">关闭</button>--%>
        </div>
    </div>

</div>

<script type="text/javascript" src="${ctx}/assets/role/roleManaged.js"></script>

<script>
    require(['jqtransform', 'jqueryValidate', 'jqueryForm'], function(){
        $('form').jqTransform();
        RoleManaged.roleAdd();
    });
</script>
