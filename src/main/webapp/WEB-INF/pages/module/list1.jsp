<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            功能模块 <small>管理</small>
        </h3>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="portlet blue box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>
                </div>
            </div>
            <div class="portlet-body">
                <div style="min-height: 430px;height:auto">
                    <div id="moduleTree" class="tree-demo"></div>

                </div>
                <div class="alert alert-danger no-margin margin-top-10">
                    右击相应的模块进行编辑，编辑框里的保存将直接同步到后台；
                    <%--<button id="btn-save" type="button" class="btn btn-primary">保存状态</button>--%>
                </div>
            </div>
        </div>
    </div>
    <%--<div class="col-md-6">
        <div class="portlet green box">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-cogs"></i>
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="moduleTreeDisplay" class="tree-demo"></div>
                <div class="alert alert-danger no-margin margin-top-10">保存功能模块的显示状态，功能模块前打勾的为显示否则为隐藏；
                    <button id="btn-save" type="button" class="btn btn-primary">保存状态</button>
                </div>
            </div>
        </div>
    </div>--%>
</div>
<!-- Modal -->
<div class="modal fade" id="moduleTreeModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">模块操作</h4>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-2">
                                <input type="text" class="form-control hide" id="module-image" placeholder="图标" readonly />
                                <a class="btn btn-default dropdown-toggle btn-image" data-toggle="dropdown">
                                    <span>&nbsp;<i class="fa fa-desktop"></i>&nbsp;</span>
                                </a>
                                <div class="dropdown-menu icons">
                                    <ul></ul>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <input type="text" class="form-control" id="module-name" placeholder="模块名称" />
                            </div>
                            <div class="col-xs-3 hidden">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" hidden="hidden" id="module-display" checked /> <%--显示模块--%>
                                    </label>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-9">
                                <input type="text" class="form-control" placeholder="url地址" id="module-url" />
                            </div>
                            <div class="col-xs-3">
                                <select class="form-control bs-select" id="module-type">
                                    <option value="menu">菜单</option>
                                    <option value="function">功能权限</option>
                                </select>
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-12">
                                <input type="text" class="form-control" placeholder="权限字符串" id="module-permission" />
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="3" placeholder="子菜单url（多个子菜单用逗号隔开）" id="module-functions" ></textarea>
                    </div>
                    <div class="form-group">
                        <textarea class="form-control" rows="3" placeholder="备注" id="module-remark" ></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button id="btn-cancel" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button id="module-save" type="button" class="btn btn-primary">保存</button>
            </div>
        </div>
    </div>
</div>

<!-- 自定义js，可选 -->
<script type="text/javascript" src="${ctx}/assets/module/moduleManaged.js"></script>
<script>
    require(['mainModule','dataTablesBootstrap', 'jqDataTables', 'jstree','WdatePicker','jqtransform'], function(mainModule){
        ModuleManaged.init();
    });
</script>