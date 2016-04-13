<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
 <!-- ng-app="app" -->
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>首页</title>
    <link href="${ctx}/assets/lib/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/css/style.css" rel="stylesheet">
    <link href="${ctx}/assets/theme/default/main.css" rel="stylesheet" id="css_main">

    <!-- <link href="css/dataTables.bootstrap.min.css" rel="stylesheet"> -->

    <!-- <link href="js/plugins/jqTransform/jqtransform.css" rel="stylesheet"> -->
    
    <!-- <link rel="stylesheet" href="js/plugins/kindeditor/themes/default/default.css" /> -->
    
    <!-- <link rel="stylesheet" href="css/pace-theme-minimal.css" />

    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css"> -->
    
</head>
<body class="">
    <div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                </div>
                <div class="modal-body">...</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-title container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">华软信息化开发平台</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav user-nav">
                    <li class="user-avatar">
                        <img src="${ctx}/assets/img/head.jpg" />
                    </li>
                    <li class="dropdown">
                        <a id="dLabel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            admin
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dLabel">
                            <li>
                                <a href="#">个人资料</a>
                            </li>
                            <li>
                                <a href="#">我的消息</a>
                            </li>
                            <li>
                                <a href="#">更改密码</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="${ctx}/assets/login.html">退出登录</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <span class="glyphicon glyphicon-tree-conifer"></span>
                            皮肤
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu theme-menu">
                            <li>
                                <a href="javascript:;" rel="flat">扁平</a>
                            </li>
                            <li>
                                <a href="javascript:;" rel="gold">土豪金</a>
                            </li>
                            <li>
                                <a href="javascript:;" rel="slive">东北银</a>
                            </li>
                            <li>
                                <a href="javascript:;" rel="red">苏丹红</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li class="dropdown-header">新皮肤</li>
                            <li>
                                <a href="javascript:;" rel="black">高级黑</a>
                            </li>
                            <li>
                                <a href="javascript:;" rel="pink">脑残粉</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">设置</a>
                    </li>
                    <li>
                        <a href="#">帮助</a>
                    </li>
                    <li>
                        <a href="#">关闭</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navbar-menu container-fluid">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#" class="menu-home">
                        <span class="glyphicon glyphicon-home"></span>
                    </a>
                </li>
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li>
                    <a href="#">用户管理</a>
                </li>
                <li>
                    <a href="#">角色管理</a>
                </li>
                <li>
                    <a href="#">权限管理</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container-fluid fixed-top container-wrap">
        <div ui-view></div>
    </div>
    <footer class="footer">
        <p class="text-muted">
            <span class="glyphicon glyphicon-info-sign"></span>
            &nbsp;华软信息化开发平台
        </p>
    </footer>
    <ul class="right_tab">
        <li>关闭当前</li>
        <li>关闭所有</li>
        <li>关闭其他</li>
        <li>刷新</li>
    </ul>
    <script data-baseurl="${ctx}/assets/" data-main="${ctx}/assets/main.js" src="${ctx}/assets/lib/require/require.js" id="main"></script>
</body>
</html>