<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="cs" class="com.youtube.services.impls.CommonService" scope="request"
             type="com.youtube.services.ICommonService"/>
<jsp:useBean id="video" class="com.youtube.entities.Video" scope="request" type="com.youtube.entities.Video"/>
<jsp:useBean id="videos" class="com.youtube.daos.impls.VideoDAO" type="com.youtube.daos.impls.VideoDAO"
             scope="application"></jsp:useBean>
<html>

<head>
    <link rel="stylesheet" href="<c:url value='/templates/home/css/home.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/templates/home/css/home_responsive.css'/>" type="text/css">
    <title>Home</title>
    <script>

    </script>
</head>
<body>
<hr>
<c:if test="${txtSearch!=null}">
    <div class="search" aria-checked="true">
        <p>Kết quả tìm kiếm</p>
        <c:choose>
            <c:when test="${listVideo.size()==0}">
                <p id="result">Không tìm thấy kêt quả phù hợp</p>
            </c:when>
            <c:otherwise>
                <div class="d-flex fw-600" id="search">
                    <c:forEach var='video' items="${listVideo}" varStatus="status">
                        <a href="<c:url value="/watch?v=${video.id}"/>"><img
                                src="${video.avatarUrl}"
                                alt="">
                            <div class="info d-flex">
                                <figure>
                                    <img class="rounded-circle"
                                         src="${video.user.avatarChannelUrl}"
                                         alt="${video.user.name}">
                                </figure>
                                <div>
                                    <p class="name m-0">
                                        <c:out value='${cs.formatString(video.name)}'/>
                                    </p>
                                    <p class="username m-0">
                                        <c:out value='${cs.formatString(video.user.name)}'/>
                                    </p>
                                    <p class="more--info m-0">
                                        <c:out value='${cs.formatNumber(video.views)}'/> lượt xem &#183; <c:out
                                            value='${cs.distanceTime(video.postingTime)}'/>
                                    </p>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </c:otherwise>
        </c:choose>
        <p>Có thể bạn thích</p>
    </div>
</c:if>

<div class="d-flex fw-600" id="main">
    <c:forEach var='video' items="${videos.findAll()}" varStatus="status">
        <a href="<c:url value="/watch?v=${video.id}"/>"><img
                src="${video.avatarUrl}"
                alt="">
            <div class="info d-flex">
                <figure>
                    <img class="rounded-circle"
                         src="${video.user.avatarChannelUrl}"
                         alt="${video.user.name}">
                </figure>
                <div>
                    <p class="name m-0">
                        <c:out value='${cs.formatString(video.name)}'/>
                    </p>
                    <p class="username m-0">
                        <c:out value='${cs.formatString(video.user.name)}'/>
                    </p>
                    <p class="more--info m-0">
                        <c:out value='${cs.formatNumber(video.views)}'/> lượt xem &#183; <c:out
                            value='${cs.distanceTime(video.postingTime)}'/>
                    </p>
                </div>
            </div>
        </a>
    </c:forEach>
</div>

<script src="<c:url value='/templates/common/js/common.js'/>" type="text/javascript"></script>
<script src="<c:url value='/templates/home/js/home.js'/>" type="text/javascript"></script>
</body>

</html>




