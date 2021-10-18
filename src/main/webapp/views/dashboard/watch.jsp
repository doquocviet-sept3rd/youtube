<jsp:useBean id="video" scope="request" type="com.youtube.entities.Video"/>
<jsp:useBean id="videos" scope="request" type="java.util.List"/>
<jsp:useBean id="cs" scope="request" type="com.youtube.services.ICommonService"/>
<jsp:useBean id="vService" scope="request" type="com.youtube.services.IVideoService"/>
<%--@elvariable id="user" type="com.youtube.entities.User"--%>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="<c:url value='/templates/watch/assets/css/base.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/watch/assets/css/style.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/watch/assets/css/responsive.css'/>" type="text/css"
          media="all">
    <title><c:out value='${video.name}'/></title>
</head>

<body>

<!-- begin: primary -->
<div id="primary">
    <div class="video">
        <c:out value='${video.src}' escapeXml='false'/>
        <p class="hashtag">
            <c:out value='${video.hashtag}'/>
        </p>
        <p class="name">
            <c:out value='${video.name}'/>
        </p>
        <p class="views-time">
            <c:out value='${video.views == 0 ? 0 : cs.addFPoint(video.views)}'/>
            &nbsp;lượt xem •&nbsp;
            <c:out value='${cs.formatTime(video.postingTime)}'/>
        </p>
        <div class="interaction">
            <i id="btn-like-video"
               class="fal fa-thumbs-up ${vService.isLikedByUser(video.id, user.id) ? 'active' : ''}"></i>
            <span id="quantity-like-video">
                <c:out value='${video.likes == 0 ? 0 : cs.formatNumber(video.likes)}'/>
            </span>
            <i id="btn-dislike-video"
               class="fal fa-thumbs-down ${vService.isDislikedByUser(video.id, user.id) ? 'active' : ''}"></i>
            <span id="quantity-dislike-video">
                <c:out value='${video.dislikes == 0 ? 0 : cs.formatNumber(video.dislikes)}'/>
            </span>
            <i class="fal fa-share"></i>
            <span>SHARE</span>
            <i class="fal fa-save"></i>
            <span>LƯU</span>
            <i class="fal fa-ellipsis-h"></i>
        </div>
    </div>
    <hr/>
    <div class="content">
        <div class="info">
            <div class="profile">
                <figure>
                    <img src="<c:url value='${video.user.avatarUrl}'/>" alt="avatar"/>
                </figure>
                <div>
                    <p><c:out value='${video.user.name}'/></p>
                    <span>
                        <c:out value='${video.user.subscribe == 0 ? 0 : cs.formatNumber(video.user.subscribe)}'/>
                        &nbsp;người đăng ký
                    </span>
                </div>
            </div>
            <input type="submit" value="ĐĂNG KÝ"/>
        </div>
        <div class="expander">
            <c:out value='${video.content}'/>
        </div>
    </div>
    <hr/>
    <div class="comments">
        <div class="heading">
            <span>289 bình luận</span>
            <span>
                <i class="fal fa-sort-amount-up-alt"></i>
                SẮP XẾP THEO
            </span>
        </div>
        <c:if test='${user != null}'>
            <form method="POST">
                <div class="add-comment">
                    <figure>
                        <img src="<c:url value='/templates/watch/assets/img/avatar.jpg'/>" alt="avatar"/>
                    </figure>
                    <label>
                        <input name="comment_content" type="text" placeholder="Bình luận công khai...">
                    </label>
                </div>
                <div class="save-comment">
                    <button class="cancel">HỦY</button>
                    <button type="submit" class="save">BÌNH LUẬN</button>
                </div>
            </form>
        </c:if>
        <div class="comment">
            <figure>
                <img src="<c:url value='/templates/watch/assets/img/avatar.jpg'/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">TaLaGio</a>
                    <span>1 năm trước</span>
                </div>
                <div class="comment-content">
                    Hay lắm cậu. Đừng bỏ, hãy cứ làm bằng Tâm. Cậu sẽ thành công!!!
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-ellipsis-v options"></i>
                            <div class="comment-edit-delete">
                                <a href="<c:url value="/#"/>">
                                    <i class="fal fa-edit"></i>
                                    <span>Chỉnh sửa</span>
                                </a>
                                <a href="<c:url value="/#"/>">
                                    <i class="fal fa-trash-alt"></i>
                                    <span>Xóa</span>
                                </a>
                            </div>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end: primary -->

<!-- begin: secondary -->
<div id="secondary">
    <c:forEach var='video' items='${videos}'>
        <a href="<c:url value='/watch?v=${video.id}'/>" class="session">
            <figure>
                <img src="${video.avatarUrl}" alt="">
            </figure>
            <div>
                <p class="name">
                    <c:out value='${cs.formatString(video.name)}'/>
                </p>
                <p class="user">
                    <c:out value='${video.user.name}'/>
                </p>
                <p class="info">
                    <c:out value='${video.views == 0 ? cs.formatNumber(video.views) : 0}'/>
                    &nbsp;lượt xem •&nbsp;
                    <c:out value='${cs.distanceTime(video.postingTime)}'/>
                </p>
            </div>
            <i class="fal fa-ellipsis-v"></i>
        </a>
    </c:forEach>
</div>
<!-- end: secondary -->

<script>

    const btnLikeVideo = document.querySelector("#btn-like-video");
    const btnDislikedVideo = document.querySelector("#btn-dislike-video");
    let videoLikes = ${video.likes};
    let videoDislikes = ${video.dislikes};
    btnLikeVideo.onclick = function () {
        toggleVideoInteraction(true, this);
    }
    btnDislikedVideo.onclick = function () {
        toggleVideoInteraction(false, this);
    }

    const toggleVideoInteraction = function (isLike, btnInteraction) {

        if (${user != null}) {

            let likes = videoLikes;
            let dislikes = videoDislikes;

            const urlVidInterationAPI = 'http://localhost:8080/youtube_war_exploded/api-vid-interact';
            const urlVideoAPI = 'http://localhost:8080/youtube_war_exploded/api-video';

            const bodyVidInteration = JSON.stringify({
                isLike: isLike,
                userId: ${user.id},
                videoId: ${video.id}
            });

            if (btnInteraction.classList.contains("active")) {
                btnInteraction.classList.remove("active");

                if (isLike) {
                    likes--;
                } else {
                    dislikes--;
                }

                console.log("send api delete vidInteract");
                // send api delete vidInteract
                requestAPI(urlVidInterationAPI, {
                    method: 'DELETE',
                    body: bodyVidInteration
                });

                requestAPI(urlVideoAPI, {
                    method: 'POST',
                    body: JSON.stringify({
                        action: 'delete',
                        videoId: ${video.id},
                        isLike: isLike
                    })
                });

            } else if (!btnLikeVideo.classList.contains("active") && !btnDislikedVideo.classList.contains("active")) {
                btnInteraction.classList.add("active");
                // send api insert video interaction
                if (isLike) {
                    likes++;
                } else {
                    dislikes++;
                }

                requestAPI(urlVidInterationAPI, {
                    method: 'POST',
                    body: bodyVidInteration
                });

                requestAPI(urlVideoAPI, {
                    method: 'POST',
                    body: JSON.stringify({
                        action: 'add',
                        videoId: ${video.id},
                        isLike: isLike
                    })
                });

            } else {
                btnInteraction.classList.add("active");
                console.log("send api edit -> dislike -> like or insert video interaction");
                // send api edit -> dislike -> like
                if (isLike) {
                    btnDislikedVideo.classList.remove("active");
                    likes++;
                    dislikes--;
                } else {
                    btnLikeVideo.classList.remove("active");
                    likes--;
                    dislikes++;
                }
                requestAPI(urlVidInterationAPI, {
                    method: 'PUT',
                    body: bodyVidInteration
                });
                requestAPI(urlVideoAPI, {
                    method: 'POST',
                    body: JSON.stringify({
                        action: 'update',
                        videoId: ${video.id},
                        isLike: isLike
                    })
                });
            }

            document.querySelector("#quantity-like-video").innerHTML = formatNumber(likes);
            document.querySelector("#quantity-dislike-video").innerHTML = formatNumber(dislikes);

            videoLikes = likes;
            videoDislikes = dislikes;

        } else {
            alert("User null");
        }
    }

    const requestAPI = function (url, options) {
        fetch(url, options)
            .then(() => {
                console.log("success");
            })
    }

    const formatNumber = function (number) {
        let result;
        if (number > 1000000) {
            let coefficient = parseInt(number / 1000000);
            result = coefficient + " Tr";
        } else if (number > 1000) {
            let coefficient = parseInt(number / 1000);
            result = coefficient + " N";
        } else {
            result = number;
        }
        return result;
    }

</script>

</body>

</html>