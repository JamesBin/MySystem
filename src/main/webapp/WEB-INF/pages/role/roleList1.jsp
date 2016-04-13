<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>角色权限</title>
    <!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
    <content tag="css">
        <!-- 单独页面所需的样式，可选 -->
        <link rel="stylesheet" type="text/css" href="${ctx}/assets/jstree/dist/themes/default/style.min.css"/>
        <link rel="stylesheet" type="text/css" href="${ctx}/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="${ctx}/assets/global/plugins/select2/select2.css"/>
        <link rel="stylesheet" href="${ctx}/assets/myCss/dataTable.css"/>
    </content>
    <!-- END PAGE LEVEL PLUGIN STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body>
    <div class="row">
        <div class="col-md-12">
            <!-- BEGIN PAGE TITLE & BREADCRUMB-->
            <h3 class="page-title">
                角色权限 <small>管理</small>
            </h3>
            <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <form class="form-horizontal well" role="form">
                <div class="col-md-12">
                    <div class="btn-group pull-right">
                        <button class="btn btn-info margin-bottom-10" id="search" type="button">查询 <i class="fa fa-search"></i></button>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-1 control-label">角色编码</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="role.name">
                    </div>
                    <label class="col-md-1 control-label">角色名</label>
                    <div class="col-md-3">
                        <input class="form-control" type="text" name="role.roleName">
                    </div>
                </div>
            </form>

            <jsp:include page="roleAdd.jsp"/>
            <jsp:include page="roleEdit.jsp"/>
            <jsp:include page="roleModule.jsp"/>
            <button id="roleAdd" class="btn green pull-right">
                添加 <i class="fa fa-plus"></i>
            </button>
            <table class="table table-bordered table-condensed table-hover" id="dataTable">
                <thead>
                <tr>
                    <th>
                        角色编码
                    </th>
                    <th>
                        角色名
                    </th>
                    <th>
                        优先级
                    </th>
                    <th>
                        描述
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <!--页面插件脚本 -->
    <content tag="includeScript">
        <!-- 页面所使用到的脚本，可选 -->
        <script type="text/javascript" src="${ctx}/assets/global/plugins/select2/select2.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/select2/select2_locale_zh-CN.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/jquery-multi-select/js/jquery.multi-select.js"></script>
        <script src="${ctx}/assets/myPlugins/jquery.chained.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/lib/validate/jquery.form.js"></script>
        <script src="${ctx}/assets/global/plugins/jquery-validation/localization/messages_zh.js"></script>
        <script src="${ctx}/assets/lib/validate/jquery.validate.extend.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugins/jstree/dist/jstree.min.js"></script>

        <script type="text/javascript" src="${ctx}/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
        <script type="text/javascript" src="${ctx}/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>

        <script src="${ctx}/assets/global/scripts/metronic.js" type="text/javascript"></script><!-- 这个是核心js，每个页面都要 -->

        <!-- 自定义js，可选 -->
        <script type="text/javascript" src="${ctx}/assets/myJs/system/role/roleManaged.js"></script>
        <script type="text/javascript" src="${ctx}/assets/myJs/system/role/table-role.js"></script>

    </content>
    <!-- END PAGE LEVEL SCRIPTS -->

    <!--页面脚本 -->
    <content tag="script">
        <script>
            jQuery(document).ready(function() {
                //App.ajaxError();
                TableManaged.init();
                RoleManaged.roleAdd();
                RoleManaged.roleEdit();
                RoleManaged.roleDel();
                RoleManaged.roleModule();
            });
        </script>
    </content>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>