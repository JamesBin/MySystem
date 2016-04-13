<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  User: 吴锡霖
  Date: 2014/8/6
  Time: 14:48
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="userRoleModal" class="modal fade" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">分配角色</h4>
            </div>
            <div class="modal-body form">
                <form action="#" class="form-horizontal">
                    <div class="form-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-9 col-md-offset-2">
                                        <select multiple="multiple" class="multi-select" id="userRole" name="userRole,">
                                            <c:forEach items="${roles}" var="role">
                                                <option value="${role.id}">${role.roleName}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="btn-group col-md-7 col-md-offset-4">
                                    <button data-action="select_all" type="button"
                                            class="btn btn-success btn-sm margin-right-10 userRoleBtn">选择全部</button>
                                    <button data-action="deselect_all" type="button"
                                            class="btn btn-danger btn-sm margin-right-10 userRoleBtn">删除全部</button>
                                   <%-- <button data-action="refresh" type="button"
                                            class="btn btn-default btn-sm userRoleBtn">恢复初始</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="saveUserRole" type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>
