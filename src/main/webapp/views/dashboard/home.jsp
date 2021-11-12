<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>

<jsp:useBean id="videos" scope="request" type="java.util.List"/>
<jsp:useBean id="cs" scope="request" type="com.youtube.services.ICommonService"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value='/templates/home/home.css'/>" >
    <link rel="stylesheet" type="text/css" href="<c:url value='/templates/home/css/home_responsive.css'/>">
    <title>Home</title>
</head>

<body>

<hr>
<div class="d-flex fw-600" id="main">
    <c:forEach var="video" items="${videos}">
        <a href="<c:url value="/watch?v=${video.id}"/>">
            <img src="<c:url value='${video.avatarUrl}'/>"
                alt="">
            <div class="info d-flex">
                <figure>
                    <img class="rounded-circle"
                         src="<c:url value='${video.user.avatarChannelUrl}'/>"
                         alt="">
                </figure>
                <div>
                    <p class="name m-0">
                        <c:out value='${video.name}'/>
                    </p>
                    <p class="username m-0">
                        <c:out value='${video.user.nameChannel}'/>
                    </p>
                    <p class="more--info m-0">
                        <c:out value='${cs.formatNumber(video.views)}'/> lượt xem
                        &#183;
                        <c:out value='${cs.distanceTime(video.postingTime)}'/>
                    </p>
                </div>
            </div>
        </a>
    </c:forEach>
</div>

<script type="text/javascript" src="<c:url value='/templates/common/js/common.js'/>"></script>
<script type="text/javascript" src="<c:url value='/templates/home/js/home.js'/>"></script>
</body>

</html>




