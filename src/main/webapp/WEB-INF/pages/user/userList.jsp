<%--
  @Author: 吴锡霖
  @File: userInfo.jsp
  @DATE: 2016/1/22
  @TIME: 16:26
--%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%--<div class="modal fade" id="mySearch" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">条件搜索</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">
                            <span class="text-red">*</span>
                            姓名：
                        </label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">
                            <span class="text-red">*</span>
                            发布时间：
                        </label>
                        <div class="col-sm-8">
                            <div class="input-group">
                                <input id="d5221" type="text" class="form-control" onFocus="var d5222=$dp.$('d5222');WdatePicker({onpicked:function(){d5222.focus();},maxDate:'#F{$dp.$D(\'d5222\')}'})"/>
                                <span class="input-group-addon" id="sizing-addon1">-</span>
                                <input type="text" id="d5222" class="form-control Wdate" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'d5221\')}'})"/>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary">搜索</button>
            </div>
        </div>
    </div>
</div>--%>
<jsp:include page="userRole.jsp"/>

<div class="main" id="main" >

    <div class="wrapper row">
        <div class="col-xs-10">
            <form class="form-inline search">
                <div class="form-group">
                    <label>账号：</label>
                    <input name="username" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label>工号：</label>
                    <input name="staffNo" type="text" class="form-control" />
                </div>
                <div class="form-group">
                    <label>姓名：</label>
                    <input name="realName" type="text" class="form-control" />
                </div>
                <%--<div class="form-group hide">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">直属</label>
                    </div>
                </div>--%>
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
                        <a href="#/user/create" <%--data-toggle="modal" data-target="#userAddModal"--%>>
                            <span class="glyphicon glyphicon-plus glyphicon-active"></span>
                            添加
                        </a>
                    </li>
                    <%--<li>
                        <a id="userEdit" href="javascript:;" title="编辑">
                            <span class="glyphicon glyphicon-pencil glyphicon-active"></span>
                            编辑
                        </a>
                    </li>
                    <li>
                        <a id="userRolePre" href="javascript:;" title="分配角色">
                            <span class="glyphicon glyphicon-user glyphicon-active"></span>
                            分配角色
                        </a>
                    </li>--%>
                    <li>
                        <a id="resetPwd" href="javascript:;" title="重置密码">
                            <span class="glyphicon glyphicon-lock glyphicon-active"></span>
                            重置密码
                        </a>
                    </li>
                    <%--<li>
                        <a id="enable" href="javascript:;" title="启用/禁用">
                            <span class="glyphicon glyphicon-ban-circle glyphicon-active"></span>
                            启用/禁用
                        </a>
                    </li>--%>
                    <li>
                        <a id="userDel" href="javascript:;" title="删除">
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
                    <button type="submit" class="btn btn-default">检索</button>
                </form>
                <ul class="nav navbar-nav navbar-right hide">
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
    <div class="table-responsive hide">
        <table class="table table-hover table-condensed" id="dataTable">
            <thead>
            <tr>
                <th>
                    <input type="checkbox" id="checkAll" />
                </th>
                <th>账号</th>
                <th>真实姓名</th>
                <th>角色</th>
                <th>工号</th>
                <th>性别</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>
<%--<div class="main" >
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
        <table class="table table-striped table-condensed" id="dataTable">
            <thead>
                <tr>
                    <th>
                        <input type="checkbox" id="checkAll" />
                    </th>
                    &lt;%&ndash;<th>组织机构</th>&ndash;%&gt;
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
</div>--%>

<%--
<script type="text/javascript" src="${ctx}/assets/user/table-user.js"></script>
<script type="text/javascript" src="${ctx}/assets/user/userManaged.js"></script>--%>

<script type="text/javascript">
    require(['UserManaged', 'jqtransform', 'jqueryValidate', 'jqueryForm', 'multiSelect','dataTablesBootstrap'], function(UserManaged){
        //初始化页面
        UserTable.init();

//            UserManaged.userAdd();
        UserManaged.userEnable();
        UserManaged.userDel();
        UserManaged.userRole();
//            UserManaged.userEdit();
        UserManaged.resetPwd();

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

