<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="net.sf.jxls.transformer.XLSTransformer,java.io.File"%>
<%@ page language="java"%>
<%@ page import="java.io.FileInputStream"%>
<%@ page import="java.io.OutputStream"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.hgsoft.yfzx.webapp.security.entity.SysUser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
</head>
<body>
<%
    List lists = (List) request.getAttribute("resultList");
    String queryTimest = (String) request.getAttribute("queryTimest");
    String queryTimeed = (String) request.getAttribute("queryTimeed");
    SysUser operator = (SysUser) request.getSession().getAttribute("operator");
    String userName = operator.getRealName();
    String jspPath = (String) request.getAttribute("jspPath");
    String fileName = (String) request.getAttribute("fileName");
    response.setContentType("application/vnd.ms-excel");

    String agent = request.getHeader("User-Agent").toUpperCase();
    if (agent.indexOf("MSIE") > 0 || agent.indexOf("TRIDENT") > 0) {
        fileName = URLEncoder.encode(fileName, "UTF-8");
    } else {
        fileName = new String(fileName.getBytes("utf-8"), "ISO_8859_1");
    }
//    fileName = new String(fileName.getBytes("utf-8"), "ISO_8859_1");
    response.addHeader("Content-disposition", "attachment; filename=" + fileName + ".xls");

    String realPath = application.getRealPath("/");
    String templateFileName = realPath
            + "/WEB-INF/pages/excelTemplate/" + jspPath + ".xls";
    String path = application.getRealPath("/WEB-INF/tmpExcel/");
    String destFileName = path
            + "/" + (int) (Math.random() * 1000000000) + ".xls";
    OutputStream os = null;
    FileInputStream is = null;
    File directory = new File(path);
    if (!directory.exists()) {
        System.out.println(directory.mkdirs()); // 生成新的目录
    }
    try {
        Map beans = new HashMap();
        //list为null的时候，parse报错，未处理
        beans.put("queryTimest", queryTimest);
        beans.put("queryTimeed", queryTimeed);
        beans.put("userName", userName);
        if (lists == null || lists.size() == 0) {
            beans.put("lists", null);
        } else {
            beans.put("lists", lists);
        }
        XLSTransformer transformer = new XLSTransformer();
        transformer.transformXLS(templateFileName, beans, destFileName);

        os = response.getOutputStream();
        is = new FileInputStream(destFileName);
        response.addIntHeader("Content-Length", is.available());

        byte[] b = new byte[1024];
        int i = 0;

        while ((i = is.read(b)) > 0) {
            os.write(b, 0, i);
        }
        beans.clear();
        //已生成xls文件，转成输出流返回客户端
        os.flush();
        out.clear();
        out = pageContext.pushBody();
    } catch (Exception e) {
        System.out.println(e);
    } finally {
        if (is != null) {
            is.close();
        }
        if (os != null) {
            os.close();
        }
        File file = new File(destFileName);
        file.delete();
    }
%>
</body>
</html>