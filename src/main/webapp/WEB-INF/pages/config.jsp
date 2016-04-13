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
    <link rel="icon" href="favicon.ico">

    <title>配置页</title>

    <link href="${ctx}/assets/lib/bootstrap3/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/assets/css/login.css" rel="stylesheet">
    <link href="${ctx}/assets/theme/default/main.css" rel="stylesheet" id="css_main">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>
<body class="login">
    <div class="loginbox">
        <div class="loginbody">
            <h5>初始化配置</h5>
            <form id="loginForm" class="form-horizontal" method="post" action="config">
                <div id="ur-group" class="form-group">
                    <label class="control-label col-sm-2">系统名称</label>
                    <div class="col-sm-10 relative">
                        <input type="text" class="form-control {required:true}"
                               name="systemName" value="${systemName}">
    
                    </div>
                </div>
                <div id="pwd-group" class="form-group">
                    <label class="control-label col-sm-2">图片地址</label>
                    <div class="col-sm-10 relative">
                        <input type="text" class="form-control {required:true}" 
                               name="logoImage" value="${logoImage}"></div>
                </div>
                <button type="submit" class="btn btn-success btn-lg btn-block">保存</button>
            </form>
        </div>
        <center class="systemInfo">
            <p style="color:#6ec5e7;">
                技术支持：广州华工信息软件有限公司 </p>
        </center>
    </div>
    <script src="${ctx}/assets/lib/jquery/jquery-1.11.3.min.js"></script>
    <script src="${ctx}/assets/lib/jquery/jquery-migrate.min.js"></script>
    <script src="${ctx}/assets/lib/bootstrap3/js/bootstrap.min.js"></script>
    <script src="${ctx}/assets/lib/validate/jquery.validate.min.js"></script>
    <script src="${ctx}/assets/lib/validate/messages_zh.js"></script>
    <script src="${ctx}/assets/lib/validate/jquery.form.js"></script>
    <script src="${ctx}/assets/lib/validate/jquery.metadata.js"></script>
    <script src="${ctx}/assets/js/extend/jquery.validate.extend.js"></script>
    <script>
        $(function () {
            $('form').validate({
                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        success: function(data) {
                            if (data.code == 'success') {
                                window.location = data.url;
                                alert("保存成功!");
                            } else if (data.code == 'error') {
                                if (data.message != null) {
                                    alert(data.message);
                                } else {
                                    alert("添加失败！");
                                }
                            }
                        }
                    });
                }
            });
        });
    </script>
</body>
</html>