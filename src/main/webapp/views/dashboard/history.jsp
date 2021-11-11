<%--
  Created by IntelliJ IDEA.
  User: kitsu
  Date: 10/2/2021
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="cs" class="com.youtube.services.impls.CommonService" scope="request"
             type="com.youtube.services.ICommonService"/>
<jsp:useBean id="history" class="com.youtube.entities.History" scope="request" type="com.youtube.entities.History"/>
<jsp:useBean id="historyDao" class="com.youtube.daos.impls.HistoryDAO" type="com.youtube.daos.impls.HistoryDAO"
             scope="application"></jsp:useBean>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>History</title>
    <link rel="stylesheet" href="<c:url value='/templates/common/font/awesome/css/all.css'/>" type="text/css"
          media="all">
    <link rel="stylesheet" href="<c:url value='/templates/common/font/roboto'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/common/vendor/bootstrap/css/bootstrap.min.css'/>"
          type="text/css" media="all">
    <link rel="shortcut icon" href="https://www.youtube.com/s/desktop/0ac1422e/img/favicon_96x96.png">
    <link rel="stylesheet" href="<c:url value='/templates/common/css/common.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/header/css/header.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/header/css/header_responsive.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/templates/history/css/history.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/history/css/history_responsive.css'/>" type="text/css">
</head>

<body>

<!-- Begin: container -->
<div id="container">
    <hr>
    <p class="heading fw-600">Lịch sử xem</p>
    <p class="time fw-600">Hôm nay</p>
    <div class="fw-600 main">
        <c:forEach var='history' items="${historyDao.findAll()}" varStatus="status">
            <a href="<c:url value='/watch?v=${history.id}'/>" class="session">
                <figure>
                    <img src="${history.video.avatarUrl}" alt="" width="330px" height="200px" >
                </figure>
                <div>
                    <p class="name m-0">
                        <c:out value='${cs.formatString(history.video.name)}'/>
                    </p>
                    <p class="username">
                        <img src="${history.user.avatarUrl}" alt="" height="20px" width="20px">
                        <c:out value='${history.user.name}'/>
                    </p>
                    <p class="more--info">
                        <c:out value='${cs.distanceTime(history.video.postingTime)}'/>
                        <c:out value='${history.video.content}'/>
                    </p>
                </div>
            </a>
        </c:forEach>
        <!-- End: container -->
    </div>
</div>

<script src="/assets/vendor/jquery/jquery.min.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/common.js"></script>
<script src="/assets/js/header.js"></script>
<script src="/assets/js/history.js"></script>
</body>

</html>
