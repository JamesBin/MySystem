<%--
  @Author: 吴锡霖
  @File: userInfo.jsp
  @DATE: 2016/1/22
  @TIME: 16:26
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div class="main" >
    <div class="wrapper row">
        <div class="col-xs-10">
            <form class="form-inline">
                <div class="form-group">
                    <label>姓名：</label>
                    <input type="text" class="form-control" id="exampleInputEmail3" placeholder="输入姓名" />
                </div>
                <div class="form-group">
                    <label>车牌：</label>
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                粤
                                <span class="caret"></span>
                            </button>
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
                        </div>
                        <input type="text" class="form-control" placeholder="输入车牌" />
                    </div>
                </div>
                <div class="form-group">
                    <label>选择时间：</label>
                    <input type="text" class="form-control Wdate" onClick="WdatePicker()" />
                </div>
                <div class="form-group">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">是否外来车</label>
                    </div>
                </div>
                <div class="form-group">
                    <label>车型</label>
                    <select class="form-control">
                        <option selected="selected">请选择车型</option>
                        <option>1</option>
                        <option>2请选择车型请选择车型</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
            </form>
        </div>
        <div class="col-xs-2 placeholder">
            <button type="button" class="btn btn-primary btn-block">搜索</button>
        </div>
    </div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="collapse navbar-collapse toolbar-collapse" >
                <ul class="nav navbar-nav">
                    <li>
                        <a href="javascript:;" target="pageModal" rel="dlg_page10" title="添加">
                            <span class="glyphicon glyphicon-plus"></span>
                            添加
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;" id="del_table">
                            <span class="glyphicon glyphicon-trash"></span>
                            删除
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <span class="glyphicon glyphicon-th"></span>
                            导出表格
                        </a>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <span class="glyphicon glyphicon-print"></span>
                            打印
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            更多
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="javascript:;">
                                    <span class="glyphicon glyphicon-refresh"></span>
                                    刷新
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search"></div>
                    <button type="submit" class="btn btn-default">检索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="javascript:;">Link</a>
                    </li>
                    <li class="dropdown">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
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
        <table class="table table-hover table-condensed" id="dataTable">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="checkAll" />
                    </th>
                    <%--<th>组织机构</th>--%>
                    <th>账号</th>
                    <th>真实姓名</th>
                    <th>角色</th>
                    <th>工号</th>
                    <th>性别</th>
                    <th>状态</th>
                    <th class="text-center">操作</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>


<%--<jsp:include page="demoAdd.jsp" />--%>
<%--<jsp:include page="userRole.jsp" />--%>
<%--<jsp:include page="demoEdit.jsp" />--%>

<script type="text/javascript" src="${ctx}/assets/user/table-user.js"></script>

<script type="text/javascript">
    require(['mainModule','dataTablesBootstrap', 'jqDataTables', 'jstree','WdatePicker','jqtransform'], function(mainModule){
        //初始化页面
        $(function() {
            TableManaged.init();
        });
        // mainModule.requires.push('datatables');

        // tableModule = angular.module('TableModule', ['datatables']);
        // app.$inject = ['tableModule','datatables'];
        // console.log(mainModule)
        // mainModule.controller('MainConCtl1', ['$scope','$stateParams','DTOptionsBuilder',function($scope,$stateParams,DTOptionsBuilder) {

        //         console.log('t111')
        //     $scope.t = function(){
        //     }
        //     // console.log($stateParams.routerType);
        // }]);
    });
</script>
<!--<script src="js/hgits.navTab.js"></script>
<script src="js/hgits.pageModal.js"></script> -->

