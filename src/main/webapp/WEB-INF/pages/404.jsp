<%@ page import="java.util.Enumeration" %>
<%@ page import="org.slf4j.Logger" %>
<%@ page import="org.slf4j.LoggerFactory" %>
<%@ page language="java" pageEncoding="UTF-8" session="false" contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<%
    /*Enumeration<String> attributeNames = request.getAttributeNames();
    while (attributeNames.hasMoreElements())
    {
        String attributeName = attributeNames.nextElement();
        Object attribute = request.getAttribute(attributeName);
        out.println("request.attribute['" + attributeName + "'] = " + attribute);
    }*/
    String address = (String) request.getAttribute("javax.servlet.forward.request_uri");
    String jsp = (String) request.getAttribute("javax.servlet.error.message");
    Logger logger = LoggerFactory.getLogger("404.jsp");
    if (jsp == null || jsp.equals("")) {
        logger.error("请求地址:{} 出错", address);
    } else {
        logger.error("jsp页面:{} 找不到", jsp);
    }

%>
<h4 class="text-warning">很抱歉，您要访问的页面地址有误或者页面不存在！</h4>
<p>
    温馨提示：</br>
    请检查您访问的网址是否正确</br>
    如果您不能确认访问的网址，请联系管理员</br>
</p>
    <%--<div class="row">
        <div class="col-md-12">
            <div class="number" style="font-size: 20px">
                 404
            </div>
            <div class="details">
                <h3>很抱歉，您要访问的页面地址有误或者页面不存在！</h3>
                <p>
                    温馨提示：</br>
                    请检查您访问的网址是否正确</br>
                    如果您不能确认访问的网址，请联系管理员</br>
                </p>
              &lt;%&ndash;  <a href="${ctx}/" class="btn btn-lg blue pull-right">
                    <i class="fa fa-home"></i> 返回主页 </a>&ndash;%&gt;
            </div>
        </div>
    </div>--%>