<%--
  @Author: 詹武槟
  @File: demoList.jsp
  @DATE: 2016/3/18
  @TIME: 8:50
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<style>
    .form-group label {
        width: 70px;
    }
</style>

<div class="main" id="main">
    <div class="wrapper row">
        <div class="col-xs-10">
            <form class="form-inline search">
                <div class="form-group">
                    <label>公司名：</label>
                    <input name="search_LIKE_companyName" type="text" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>邮箱：</label>
                    <input name="search_EQ_email" type="text" class="form-control"/>
                </div>
                <div class="form-group">
                    <label>联系电话：</label>
                    <input name="search_LIKE_phone" type="text" class="form-control"/>
                </div>

                <div class="form-group">
                    <label>创建日期：</label>
                    <jsp:include page="/WEB-INF/pages/common/dateTime.jsp">
                        <jsp:param name="selected" value="choose"/>
                        <jsp:param name="lastSelected" value="${param.dateSelect}"/>
                        <jsp:param name="start_dataTime" value="search_GTE_createTime"/>
                        <jsp:param name="end_dataTime" value="search_LTE_createTime"/>
                        <jsp:param name="start_dataTime_value" value="${param.search_GTE_createTime}"/>
                        <jsp:param name="end_dataTime_value" value="${param.search_LTE_createTime}"/>
                    </jsp:include>
                </div>
            </form>
        </div>
        <div class="col-xs-2 placeholder wrapperBtn">
            <button type="button" id="search" class="btn btn-primary">搜索</button>
        </div>
    </div>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="collapse navbar-collapse toolbar-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#/demo/demoAdd" <%--data-toggle="modal" data-target="#userAddModal"--%>>
                            <span class="glyphicon glyphicon-plus glyphicon-active"></span>
                            添加
                        </a>
                    </li>

                    <li>
                        <a id="demoDel" href="javascript:;" title="删除">
                            <span class="glyphicon glyphicon-trash"></span>
                            删除
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" id="excel">
                            <span class="glyphicon glyphicon-th"></span>
                            导出表格
                        </a>
                    </li>
                    <li>
                        <a id="print" href="javascript:;">
                            <span class="glyphicon glyphicon-print"></span>
                            打印
                        </a>
                    </li>

                </ul>
                <form class="navbar-form navbar-left hide" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search"></div>
                    <button type="submit" class="btn btn-default search">检索</button>
                </form>
                <ul class="nav navbar-nav navbar-right hide">
                    <li>
                        <a href="javascript:;">Link</a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-haspopup="true" aria-expanded="false">
                            Dropdown
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:;">Action</a>
                            </li>
                            <li>
                                <a href="javascript:;">Another action</a>
                            </li>
                            <li>
                                <a href="javascript:;">Something else here</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="javascript:;">Separated link</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="table-responsive">
        <table class="table table-condensed table-hover display" id="dataTable">
            <thead>
            <tr>
                <th>
                </th>
                <th>公司名</th>
                <th>E-mail</th>
                <th>联系电话</th>
                <th>流量金额</th>
                <th>创建日期</th>
                <th>操作</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <td colspan="7" class="no-select" style="text-align:right">Total:</td>
            </tr>
            </tfoot>
            <tbody>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript" src="${ctx}/assets/demo/demoList.js"></script>
<script type="text/javascript" src="${ctx}/assets/common/customDateTime.js"></script>
<script type="text/javascript">
    require(['custom-datatable', 'moment', 'datatable-select', 'datatable-colReorder', 'WdatePicker'], function () {
        initTable();
        CustomDateTime.init();
    });
</script>



