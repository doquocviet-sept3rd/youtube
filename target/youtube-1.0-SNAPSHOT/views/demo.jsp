<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp" %>
<html>
<head>
    <title>index</title>
</head>
<body>
<h1>Index</h1>
<%
    String id = request.getAttribute("id").toString();
    String name = request.getAttribute("name").toString();
    String email = request.getAttribute("email").toString();



%>
abc
<%--<p>Email: ${id}</p>--%>
<%--<p>Name: ${name}</p>--%>
<%--<p>Email: ${email}</p>--%>
</body>
</html>