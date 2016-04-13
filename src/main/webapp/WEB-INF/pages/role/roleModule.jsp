<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 吴锡霖
  Date: 2014/8/6
  Time: 14:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="roleModuleModal" class="modal modal-scroll fade bs-modal-lg" role="dialog" aria-hidden="true" data-backdrop="static">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">分配模块</h4>
            </div>
            <div class="modal-body">
                <div id="moduleTree" class="col-md-offset-1 ">
                </div>
                <div class="alert alert-info no-margin margin-top-10">
                    黑色图标代表菜单，红色图标代表功能权限；选中代表角色有权限能进入相应的菜单或者使用相应的功能
                </div>
                <%--<form action="#" class="form-horizontal">
                    <div class="form-body">
                        <div class="col-md-12">
                            <div id="tree_2" class="tree-demo">
                            </div>
                            <div class="alert alert-info no-margin margin-top-10">
                                选中的模块或者功能代表角色有权限能进入相应的模块或者使用相应的功能
                            </div>
                        </div>
                    </div>
                </form>--%>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="moduleSave" type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
