<%--
  Created by IntelliJ IDEA.
  User: kitsu
  Date: 10/2/2021
  Time: 10:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Watch</title>
</head>
<body>
<h1>Watch</h1>
<h1>Video {id, src, name, views, hashtag, content, postingTime, likes, dislikes, avatarUrl, timeLimit}</h1>
<h1>User {id, name, avatarUrl, subscribe, }</h1>
<h1>ComInteract {full}</h1>
<h1>Subscribe {full}</h1>
<h1>VidInteract {full}</h1>
<h1>Comment {full}</h1>
<h1>${video.id}</h1>
<h1>${video.name}</h1>
<h1>${video.src}</h1>
<h1>${video.views}</h1>
<h1>${video.postingTime}</h1>
<h1>${video.hashtag}</h1>
<h1>${video.content}</h1>
<h1>${video.likes}</h1>
<h1>${video.dislikes}</h1>
<h1>
    Video
        + findOne
            + getProperties...
            + getUser
            + getComments
            + getVidInteracts
            + getCategories -> getVideos
    Comment
        + getComInteracts
    Subscribe
        + get set subscribe (video -> user)
</h1>
</body>
</html>
