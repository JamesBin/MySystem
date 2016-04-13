<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div class="main" >
    <div class="row relative">
        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-heading">功能模块</div>
                <div class="">
                    <div id="moduleTree" class="tree-demo"></div>
                </div>
            </div>
        </div>
    </div>
</div>

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

<script type="text/javascript" src="${ctx}/assets/module/moduleManaged.js"></script>
<script type="text/javascript">
    require(['app','jqtransform','jstree'], function(app){
        ModuleManaged.init();
        //初始化页面
        // mainModule.requires.push('datatables');
        // app.requires.push('TestModule');
        // app.$inject.push('TestModule');
        // var $injector = angular.injector(["mainModule"]);
        // ng-controller="TestConCtl"

        // var sHtml = '<div ng-controller="TestConCtl" ng-click="t()">3333333333333333333333333333333333333</div>'
        //     // $('#main').append($(sHtml));

        // var myModule1 = angular.module('myModule', []);
        // // myModule1.requires.push('app');
        // var injector = angular.injector(["myModule",'ng']);


        // function TestConCtl($rootScope,$compile){
        //     $rootScope.a = 22;
        //     // $compile($('#main').contents())($rootScope);

        //     $rootScope.t = function(){
        //         console.log('t')
        //     }
        // }
        // TestConCtl.$inject = ['$rootScope','$compile'];
        // injector.invoke(TestConCtl);



        $(function() {

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
                    $("#checkAll").attr("checked",false)
                    $("#checkAll").prev().removeClass("jqTransformChecked");
                }
                else{ alert("请先选择需要删除的行"); }
            });

        });
    });
</script>