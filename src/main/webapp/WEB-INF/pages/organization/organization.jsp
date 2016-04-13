<%--
  @Author: 吴锡霖
  @File: organazation.jsp
  @DATE: 2016/2/24
  @TIME: 16:30
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<div>

    名: <input type="text" ng-model="firstName"><br>
    姓: <input type="text" ng-model="lastName"><br>
    <br>
    姓名: {{firstName + " " + lastName}}

</div>


<script>

    /*var app1 = angular.module('app1', []);
    app1.controller('myCtrl', function($scope) {
        $scope.firstName= "John";
        $scope.lastName= "Doe";
    });*/
    /*require(['angular'], function(angular) {
        var app1 = angular.module('app', []);
        app1.controller('myCtrl', function($scope) {
            $scope.firstName= "John";
            $scope.lastName= "Doe";
        });
    });*/

</script>

