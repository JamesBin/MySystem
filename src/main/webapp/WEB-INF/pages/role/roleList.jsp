<%--
  @Author: 吴锡霖
  @File: userInfo.jsp
  @DATE: 2016/1/22
  @TIME: 16:26
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<style>
    tr.selected {
        background-color: #58c3e5 !important;
        color: #fff;
    }
</style>

<jsp:include page="roleModule.jsp"/>

<div class="main" id="main" >
    <div class="wrapper row">
        <div class="col-xs-10">
            <form class="form-inline search">
                <div class="form-group">
                    <label>角色编码：</label>
                    <input name="name" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label>角色名：</label>
                    <input name="roleName" type="text" class="form-control" />
                </div>
            </form>
        </div>
        <div class="col-xs-2 placeholder wrapperBtn">
            <button id="search" type="button" class="btn btn-primary">搜索</button>
        </div>
    </div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="collapse navbar-collapse toolbar-collapse" >
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#/role/create" <%--data-toggle="modal" data-target="#roleAddModal"--%>>
                            <span class="glyphicon glyphicon-plus glyphicon-active"></span>
                            添加
                        </a>
                    </li>
                    <%--<li>
                        <a id="roleEdit" href="javascript:;" title="编辑">
                            <span class="glyphicon glyphicon-pencil glyphicon-active"></span>
                            编辑
                        </a>
                    </li>
                    <li>
                        <a id="roleModule" href="javascript:;" title="分配角色">
                            <span class="glyphicon glyphicon-user glyphicon-active"></span>
                            分配角色
                        </a>
                    </li>--%>
                    <li>
                        <a id="roleDel" href="javascript:;" title="删除">
                            <span class="glyphicon glyphicon-trash"></span>
                            删除
                        </a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="table-responsive hide">
        <table class="table table-condensed table-hover" id="dataTable">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" id="checkAll" />
                </th>
                <th>角色编码</th>
                <th>角色名</th>
                <th>优先级</th>
                <th>描述</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript" src="${ctx}/assets/role/table-role.js"></script>
<script type="text/javascript" src="${ctx}/assets/role/roleManaged.js"></script>

<script type="text/javascript">
    require(['jqtransform', 'jqueryValidate', 'jqueryForm', 'dataTablesBootstrap', 'jstree'], function(){
        //初始化页面
        $(function() {
            RoleTable.init();

            /*RoleManaged.roleAdd();
            RoleManaged.roleEdit();*/
            RoleManaged.roleDel();
            RoleManaged.roleModule();

            //计算表格高度
            var h = $(".tabsPageContent").height() - $(".table-responsive").position().top - 56;

//            $('.form-inline,#table').jqTransform();
            // console.log('loadjs')
            $("a[target='pageModal']").on("click",function(){
                var $this = $(this);
                var title = $this.attr("title") || $this.text();
                var rel = $this.attr("rel") || "_blank";
                var url = $this.attr("href");
                var options = "";
                pageModal.openModal(url, rel, title, options);
                return false;
            });
            $("a#del_table").on("click",function(){
                var item = $("#table tbody input[type='checkbox']:checked");
                if(item.size() > 0){
                    item.parents("tr").remove();
                    $("#checkAll").attr("checked",false);
                    $("#checkAll").prev().removeClass("jqTransformChecked");
                }
                else{ alert("请先选择需要删除的行"); }
            });

        });
    });
</script>

