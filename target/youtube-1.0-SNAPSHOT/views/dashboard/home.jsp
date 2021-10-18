<%@ include file="/common/taglibs.jsp" %>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="cs" class="com.youtube.services.impls.CommonService" scope="request" type="com.youtube.services.ICommonService"/>
<jsp:useBean id="video" class="com.youtube.entities.Video" scope="request" type="com.youtube.entities.Video"/>
<jsp:useBean id="videos" class="com.youtube.daos.impls.VideoDAO" type="com.youtube.daos.impls.VideoDAO" scope="application"></jsp:useBean>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value='/templates/home/assets/css/base.css'/>" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/home/assets/css/style.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/home/assets/css/responsive.css'/>" type="text/css"
          media="all">
    <title>Home</title>
</head>
<body>
<div id="wrapper">
<!-- Sidebar -->
<div id="sidebar-wrapper">
    <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
        <li >
            <a href="#section1"><i class="fal fa-home-lg-alt"></i><span>Trang chủ</span></a>
        </li>
        <li>
            <a href="#section2"><i class="fal fa-compass"></i></span>Khám phá</a>
        </li>
        <li>
            <a href="#section3"><i class="fal fa-list-alt"></i></span>Đăng ký</a>
        </li>
        <li>
            <a href="#section4"><i class="fal fa-photo-video"></i></span>Thư viện</a>
        </li>
        <li>
            <a href="#section5"><i class="fal fa-history"></i></span>Video đã xem</a>
        </li>
    </ul>
</div>
    <!-- Page Content -->
    <div id="page-content-wrapper">
<div class="content">
    <div class="row">
        <c:forEach var='video' items="${videos.findAll()}" varStatus="status" >

            <div class="col-sm-6 col-md-4 col-lg-3 " style="width: 250px; height: 300px; margin-right: 10px">
                <a href="<c:url value='/watch?v=${video.id}'/>" class="session">
                        <c:out value='${video.src}'  escapeXml='false' />
                    <p class="name">
                        <c:out value='${cs.formatString(video.name)}'/>
                    </p>
                    <p class="user">
                        <img src="${video.user.avatarUrl}" alt="" height="20px" width="20px">
                        <c:out value='${video.user.name}'/>
                    </p>
                    <p class="info">
                        <c:out value='${cs.distanceTime(video.postingTime)}'/>
                    </p>
            </div>
            </a>
        </c:forEach>
    </div>
</div>
</div>
</div>
</body>
</html>




