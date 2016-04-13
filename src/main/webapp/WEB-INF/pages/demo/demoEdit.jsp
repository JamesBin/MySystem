<%--
  @Author: 詹武槟
  @File: demoList.jsp
  @DATE: 2016/3/18
  @TIME: 8:50
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<div class="main" id="main">
    <div class="page-header">
        <h4>修改模块
            <small>Edit module</small>
        </h4>
    </div>

    <div class="wrapper row">
        <div class="col-xs-10" id="demoEditModal">
            <form class="form-horizontal" action="../demo/demoEdit" method="post">
                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        <span class="text-red">*</span>公司名：
                    </label>

                    <div class="col-sm-4">
                        <input type="text" name="companyName"
                               class="form-control {required:true,minlength:2,maxlength:10}"
                               placeholder="公司名"  value="${sysDemo.companyName}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">邮箱：</label>

                    <div class="col-sm-4">
                        <div class="input-group">
                            <span class="input-group-addon" id="sizing-addon2"> <i
                                    class="glyphicon glyphicon-envelope"></i>
                            </span>
                            <input name="email" class="form-control {email:true}" placeholder="邮箱"
                                   aria-describedby="sizing-addon2" value="${sysDemo.email}">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">手机：</label>

                    <div class="col-sm-4">
                        <input name="phone" type="text" class="form-control {mobile:true}" value="${sysDemo.phone}" placeholder="联系号码"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">流量金额：</label>

                    <div class="col-sm-4">
                        <input name="money" type="text" class="form-control number" value="${sysDemo.money}" placeholder="流量金额"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">创建日期：</label>

                    <div class="col-sm-4">
                        <input name="createTime" type="text" class="form-control Wdate" onClick="WdatePicker()"
                               placeholder="选择日期"  value="<fmt:formatDate value="${sysDemo.createTime}" pattern="yyyy-MM-dd"/>" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-4">
                        <button type="submit" class="btn btn-primary pull-left margin-right-10">修改</button>
                        <button type="button"  ng-click="closeCurrentTab()" class="btn btn-default pull-left">关闭</button>
                    </div>
                </div>
                <input type="hidden" name="id" value="${sysDemo.id}"/>
            </form>
        </div>
        <a ng-click="reload('#/demo/demoEdit?id=58)" href="#/demo/demoEdit?id=58" class="fa fa-pencil pointer edit">编辑</a>
        <%--<a ui-sref="demo.demoEdit({query: {id:'58'}})" class="fa fa-pencil pointer edit">编辑</a>--%>
    </div>
</div>

<script type="text/javascript" src="${ctx}/assets/demo/demoEdit.js"></script>
<script type="text/javascript">
    require(['jqtransform', 'jqueryValidate', 'jqueryForm', 'multiSelect', 'WdatePicker'], function () {
        demoEdit();
    });
</script>
