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
<style>
    .page-header {
        padding-left: 70px;
        padding-top: 20px;
    }
</style>

<div class="main" id="main">
    <div class="page-header">
        <h4>添加订单
            <small>Add Order</small>
        </h4>
    </div>

    <div class="wrapper row">
        <div class="col-xs-10" id="orderAddModal">
            <form class="form-horizontal" action="../order/orderAdd" method="post">

                <div class="form-group">
                    <label class="col-sm-2 control-label">
                        <span class="text-red">*</span>订单号：
                    </label>

                    <div class="col-sm-4">
                        <input type="text" name="orderNo"
                               class="form-control {required:true,minlength:2,maxlength:10}"
                               placeholder="订单号">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">订单状态：</label>

                    <div class="col-sm-4">
                            <input type="text" name="status"
                                   class="form-control {required:true,minlength:2,maxlength:10}"
                                   placeholder="订单状态">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">来源：</label>

                    <div class="col-sm-4">
                        <input name="source" type="text" class="form-control {required:true,minlength:2,maxlength:10}" placeholder="来源"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">流量金额：</label>

                    <div class="col-sm-4">
                        <input name="money" type="text" class="form-control {required:true}" placeholder="流量金额"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">创建日期：</label>
                    <div class="col-sm-4">
                        <input name="createTime" type="text" class="form-control Wdate" onClick="WdatePicker()" placeholder="选择日期"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-4">
                        <button type="submit" class="btn btn-primary pull-left margin-right-10">保存</button>
                        <button type="button"  ng-click="closeCurrentTab()" class="btn btn-default pull-left">关闭</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="${ctx}/assets/order/orderAdd.js"></script>
<script type="text/javascript">
    require(['validate_full', 'jqtransform', 'jqueryValidate', 'jqueryForm', 'multiSelect', 'WdatePicker'], function () {
        $(function () {
            orderAdd();
        });
    });
</script>

