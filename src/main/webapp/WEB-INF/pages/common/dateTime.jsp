<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  @Author: 吴锡霖
  @File: dateTime.jsp
  @DATE: 2015/7/2
  @TIME: 11:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String selected = request.getParameter("selected");
    String lastSelected = request.getParameter("lastSelected");
    if (lastSelected != null && !"".equals(lastSelected)) {
        selected = lastSelected;
    }
    String format = request.getParameter("format");
    String momentFormat;
    if (format == null) {
        format = "yyyy-MM-dd HH:mm:ss";
        momentFormat = "YYYY-MM-DD HH:mm:ss";
    } else if (format.startsWith("yyyy-MM-dd")) {
        momentFormat = "YYYY-MM-DD" + format.substring(10);
    } else if (format.startsWith("yyyy-MM")) {
        momentFormat = "YYYY-MM" + format.substring(7);
    } else if (format.startsWith("yyyy")) {
        momentFormat = "YYYY" + format.substring(4);
    } else {
        momentFormat = format;
    }

    String start_dataTime = request.getParameter("start_dataTime");
    String end_dataTime = request.getParameter("end_dataTime");

    String start_dataTime_value = request.getParameter("start_dataTime_value");
    String end_dataTime_value = request.getParameter("end_dataTime_value");
%>

    <select id="dateSelect" name="dateSelect" class="form-control select2me" data-format="<%=momentFormat%>">
        <option <%="choose".equals(selected)?"selected":""%> value="choose">选择日期</option>
        <option <%="today".equals(selected)?"selected":""%> value="today">今天</option>
        <option <%="yesterday".equals(selected)?"selected":""%> value="yesterday">昨天</option>
        <option <%="recentlyThreeDay".equals(selected)?"selected":""%> value="recentlyThreeDay">最近三天</option>
        <option <%="recentlyOneWeek".equals(selected)?"selected":""%> value="recentlyOneWeek">最近一周</option>
        <option <%="recentlyOneMonth".equals(selected)?"selected":""%> value="recentlyOneMonth">最近一个月</option>
        <option <%="currentMonth".equals(selected)?"selected":""%> value="currentMonth">本月</option>
        <option <%="lastMonth".equals(selected)?"selected":""%> value="lastMonth">上个月</option>
        <option <%="custom".equals(selected)?"selected":""%> value="custom">自定义</option>
    </select>

   <span class="dateTime">
        <div class="input-group Wdate-group">
            <input readonly id="startTime" name="<%=start_dataTime%>" class="form-control" type="text" onFocus="WdatePicker({maxDate:'#F{$dp.$D(\'endTime\')}',autoPickDate:true, dateFmt: '<%=format%>', isShowClear:false, readOnly:true})" value="<%=start_dataTime_value%>"/>
                <span class="input-group-addon">
                </span>
            <input readonly id="endTime" name="<%=end_dataTime%>" class="form-control" type="text" onFocus="WdatePicker({minDate:'#F{$dp.$D(\'startTime\')}', autoPickDate:true, dateFmt: '<%=format%>', isShowClear:false, readOnly:true})" value="<%=end_dataTime_value%>"/>
        </div>
   </span>

