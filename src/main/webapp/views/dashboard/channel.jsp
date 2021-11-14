<jsp:useBean id="cs" scope="request" type="com.youtube.services.ICommonService"/>
<jsp:useBean id="videos" scope="request" type="java.util.List"/>
<%--<jsp:useBean id="video" scope="request" type="com.youtube.entities.Video"/>--%>
<%--<jsp:useBean id="users" scope="request" type="java.util.List"/>--%>
<jsp:useBean id="user" scope="request" type="com.youtube.entities.User"/>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="<c:url value='/templates/channel/css/channels.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/templates/channel/css/channels_responsive.css'/>" type="text/css">
    <title>Channel</title>
</head>
<body>
<div id="userchannel">
    <figure>
        <img id="chanelcoverimage" src="<c:url value='${user.coverChannelUrl}'/> " alt="Channel Cover Image">
    </figure>

    <!-- begin aboutchanel -->
    <div id="aboutchanel">
        <figure>
            <img id="avtmychanel" src="<c:url value='${user.avatarChannelUrl}'/> " alt="avatar">
            <div>
                <p><c:out value='${user.nameChannel}'/></p>
                <span id="sldangki"><c:out value='${user.subscribe == 0 ? 0 : cs.formatNumber(user.subscribe)}'/>
                        &nbsp;người đăng ký</span>
            </div>
        </figure>
        <input type="submit" value="ĐĂNG KÝ" id="subscribeb"/>
    </div>
    <!-- end aboutchanel -->

    <!-- begin videochanel -->
    <div class="d-flex fw-600" id="videochanel">
        <c:forEach var='video' items='${videos}'>
            <a href="<c:url value='/watch?v=${video.id}'/>">
                <img src="<c:url value='${video.avatarUrl}'/> " alt="video">
                <div class="info ">
                    <p class="name m-0"><c:out value='${video.name}'/></p>
                    <p class="user m-0"><c:out value='${video.user.nameChannel}'/></p>
                    <p class="moreinfo m-0">
                        <c:out value='${video.views == 0 ? 0 : cs.formatNumber(video.views)}'/>
                        &nbsp;lượt xem •&nbsp;
                        <c:out value='${cs.distanceTime(video.postingTime)}'/>
                    </p>
                </div>
            </a>
        </c:forEach>

    </div>
    <!-- end videochanel -->

    <!-- begin introducechanel -->
    <div id="introducechanel">
        <p id="namechanel">Tên Channel: <c:out value='${user.nameChannel}'/></p>
        <p id="email">Email liên hệ: <c:out value='${user.email}'/></p>
        <p id="createdate">Ngày thành lập: <c:out value='${user.createdOn}'/></p>
    </div>
    <!-- end introducechanel -->
</div>
<script src="<c:url value='/templates/common/js/common.js'/>"></script>
<script src="<c:url value='/templates/channel/js/channel.js'/>" type="text/javascript"></script>
</body>
</html>