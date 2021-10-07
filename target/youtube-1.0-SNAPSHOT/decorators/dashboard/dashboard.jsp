<%--
  Created by IntelliJ IDEA.
  User: kitsu
  Date: 10/2/2021
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
    <title><dec:title default="Home"/></title>
</head>
<body>

<div class="main">
    <%-- header --%>
    <%@ include file="/common/dashboard/header.jsp" %>
    <%-- header --%>

    <%-- container --%>
    <div id="container">
        <dec:body/>
    </div>
    <%-- container --%>
</div>

</body>
</html>
