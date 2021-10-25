<jsp:useBean id="subscribeService" scope="request" type="com.youtube.services.ISubscribeService"/>
<jsp:useBean id="video" scope="request" type="com.youtube.entities.Video"/>
<jsp:useBean id="videos" scope="request" type="java.util.List"/>
<jsp:useBean id="cs" scope="request" type="com.youtube.services.ICommonService"/>
<jsp:useBean id="vService" scope="request" type="com.youtube.services.IVideoService"/>
<%--@elvariable id="user" type="com.youtube.entities.User"--%>
<jsp:useBean id="comments" scope="request" type="java.util.List"/>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <link rel="stylesheet" href="<c:url value='/templates/watch/css/watch.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/templates/watch/css/watch_responsive.css'/>" type="text/css">
    <title><c:out value='${video.name}'/></title>
</head>

<body>

<!-- begin: primary -->
<div id="primary" class="w-100">
    <div class="video fw-600">
        <c:out value='${video.src}' escapeXml='false'/>
        <p class="hashtag m-0">
            <c:out value='${video.hashtag}'/>
        </p>
        <p class="name m-0">
            <c:out value='${video.name}'/>
        </p>
        <p class="views-time m-0">
            <c:out value='${video.views == 0 ? 0 : cs.addFPoint(video.views)}'/>
            &nbsp;lượt xem •&nbsp;
            <c:out value='${cs.formatTime(video.postingTime)}'/>
        </p>
        <div class="interaction">
            <i id="btn-like-video"
               class="fal fa-thumbs-up ${vService.isLikedByUser(video.id, user.id) ? 'active' : ''}">
            </i>
            <span id="quantity-like-video">
                <c:out value='${video.likes == 0 ? 0 : cs.formatNumber(video.likes)}'/>
            </span>
            <i id="btn-dislike-video"
               class="fal fa-thumbs-down ${vService.isDislikedByUser(video.id, user.id) ? 'active' : ''}">
            </i>
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
        <div class="info d-flex">
            <a href="<c:url value='/#'/>" class="profile d-flex">
                <figure>
                    <img class="rounded-circle" src="<c:url value='${video.user.avatarUrl}'/>" alt="avatar"/>
                </figure>
                <div class="fw-600">
                    <p class="m-0"><c:out value='${video.user.name}'/></p>
                    <span>
                        <c:out value='${video.user.subscribe == 0 ? 0 : cs.formatNumber(video.user.subscribe)}'/>
                        &nbsp;người đăng ký
                    </span>
                </div>
            </a>
            <div id="btn-subscribe"
                 class="${subscribeService.isSubscribed(video.userId, user.id) ? 'btn-sub h-40px rounded cursor-p lh-40px subscribeb' : 'btn-sub h-40px rounded cursor-p lh-40px'}"
                 onclick="btnSubscribeClick();">
                ${subscribeService.isSubscribed(video.userId, user.id) ? 'ĐÃ ĐĂNG KÝ' : 'ĐĂNG KÝ'}
            </div>
        </div>
        <div class="expander">
            <c:out value='${video.content}'/>
        </div>
    </div>
    <hr/>
    <div class="comments">
        <div class="heading fw-600">
            <span>${comments.size() == 0 ? 0 : cs.formatNumber(comments.size())} bình luận</span>
            <span>
                <i class="fal fa-sort-amount-up-alt"></i>
                SẮP XẾP THEO
            </span>
        </div>
        <c:if test='${user != null}'>
            <div class="add-comment">
                <figure>
                    <img src="<c:url value='/templates/header/img/avatar.jpg'/>" alt="avatar"/>
                </figure>
                <label>
                    <input class="w-100" name="comment_content" type="text" placeholder="Bình luận công khai...">
                </label>
            </div>
            <div class="save-comment">
                <button class="cancel cursor-p">HỦY</button>
                <button id="btn-add-comment" type="submit" class="save cursor-p text-white rounded">BÌNH LUẬN</button>
            </div>
        </c:if>
        <c:if test='${comments != null}'>
            <div id="render-comment">
                <c:forEach var='comment' items='${comments}'>
                    <div class="comment" data-id="${comment.id}">
                        <figure>
                            <img src="<c:url value='${comment.user.avatarUrl}'/>" alt="avatar">
                        </figure>
                        <div>
                            <div class="name">
                                <a href="<c:url value='/channel?id=${comment.userId}'/>">${comment.user.name}</a>
                                <span>${cs.distanceTime(comment.time)}</span>
                            </div>
                            <div class="comment-content">
                                    ${comment.content}
                                <div class="interaction">
                                    <span>
                                        <i class="fal fa-thumbs-up"></i>
                                            ${comment.likes}
                                    </span>
                                    <span>
                                        <i class="fal fa-thumbs-down"></i>
                                            ${comment.dislikes}
                                    </span>
                                    <c:if test='${comment.userId == user.id}'>
                                        <span>
                                            <i class="fal fa-ellipsis-v options w-40px h-40px lh-40px text-center rounded-circle"></i>
                                            <div class="comment-edit-delete bg-white rounded">
                                                <div class="cursor-p">
                                                    <i class="fal fa-edit"></i>
                                                    <span>Chỉnh sửa</span>
                                                </div>
                                                <div class=" d-block">
                                                    <i class="fal fa-trash-alt"></i>
                                                    <span>Xóa</span>
                                                </div>
                                            </div>
                                        </span>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:if>
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
                    <c:out value='${video.views == 0 ? 0 : cs.formatNumber(video.views)}'/>
                    &nbsp;lượt xem •&nbsp;
                    <c:out value='${cs.distanceTime(video.postingTime)}'/>
                </p>
            </div>
        </a>
    </c:forEach>
</div>
<!-- end: secondary -->

<script src="<c:url value='/templates/common/js/common.js'/>" type="text/javascript"></script>
<script src="<c:url value='/templates/watch/css/watch.js'/>"></script>
<script>

    <%-- Url API --%>
    const urlVidInterationAPI = 'http://localhost:8080/api-vid-interact';
    const urlVideoAPI = 'http://localhost:8080/api-video';
    const urlSubscribeAPI = 'http://localhost:8080/api-subscribe';
    const urlUserAPI = 'http://localhost:8080/api-user';
    const urlCommentAPI = 'http://localhost:8080/api-comment';

    <%-- Video interaction --%>
    const btnLikeVideo = $('#btn-like-video');
    const btnDislikedVideo = $('#btn-dislike-video');
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
            const bodyVidInteration = JSON.stringify({
                isLike: isLike,
                userId: ${user.id},
                videoId: ${video.id}
            });
            if (btnInteraction.classList.contains('active')) {
                btnInteraction.classList.remove('active');
                if (isLike) {
                    videoLikes--;
                } else {
                    videoDislikes--;
                }
                // send api delete vidInteract
                callAPI(urlVidInterationAPI, {
                    method: 'DELETE',
                    body: bodyVidInteration
                })
                callAPI(urlVideoAPI + `?action=delete&videoId=${video.id}&isLike=` + isLike, {
                    method: 'PUT',
                    body: null
                });
            } else if (!btnLikeVideo.classList.contains('active') && !btnDislikedVideo.classList.contains('active')) {
                btnInteraction.classList.add('active');
                // send api insert video interaction
                if (isLike) {
                    videoLikes++;
                } else {
                    videoDislikes++;
                }
                callAPI(urlVidInterationAPI, {
                    method: 'POST',
                    body: bodyVidInteration
                });
                callAPI(urlVideoAPI + '?action=add&videoId=${video.id}&isLike=' + isLike, {
                    method: 'PUT',
                    body: null
                });
            } else {
                btnInteraction.classList.add('active');
                // send api edit -> dislike -> like
                if (isLike) {
                    btnDislikedVideo.classList.remove('active');
                    videoLikes++;
                    videoDislikes--;
                } else {
                    btnLikeVideo.classList.remove('active');
                    videoLikes--;
                    videoDislikes++;
                }
                callAPI(urlVidInterationAPI, {
                    method: 'PUT',
                    body: bodyVidInteration
                });
                callAPI(urlVideoAPI + `?action=update&videoId=${video.id}&isLike=` + isLike, {
                    method: 'PUT',
                    body: null
                });
            }
            $('#quantity-like-video').innerHTML = formatNumber(videoLikes);
            $('#quantity-dislike-video').innerHTML = formatNumber(videoDislikes);
        } else {
            window.alert("Bạn chưa đăng nhập!");
        }
    }

    <%-- Subscribe --%>

    let isSub = ${video.user.subscribers.contains(user) ? true : false};
    let subscribes = ${video.user.subscribe};

    function btnSubscribeClick() {
        let btnSubscribe = $('#btn-subscribe');
        if (${user != null}) {
            if (isSub) {
                // subscribed
                // send api delete
                callAPI(urlSubscribeAPI, {
                    method: 'DELETE',
                    body: JSON.stringify({
                        userId: ${video.user.id},
                        userIdSub: ${user.id}
                    })
                });
                callAPI(urlUserAPI + '?action=delete&userId=' + ${video.userId}, {
                    method: 'PUT',
                    body: null
                });
                btnSubscribe.innerHTML = 'ĐĂNG KÝ';
                subscribes--;
            } else {
                // subscribe
                // send api insert
                callAPI(urlSubscribeAPI, {
                    method: 'POST',
                    body: JSON.stringify({
                        userId: ${video.user.id},
                        userIdSub: ${user.id}
                    })
                });
                callAPI(urlUserAPI + '?action=add&userId=' + ${video.userId}, {
                    method: 'PUT',
                    body: null
                });
                btnSubscribe.innerHTML = 'ĐÃ ĐĂNG KÝ';
                subscribes++;
            }
            btnSubscribe.classList.toggle('subscribeb');
            $('#primary .content .info a span').innerHTML = formatNumber(subscribes) + ' người đăng ký';
            isSub = !isSub;
        } else {
            window.alert('Bạn chưa đăng nhập!');
        }
    }

    const commentInteraction = () => {
        let input = $('#primary .add-comment input');
        const interaction = $('#primary .comments .save-comment');
        const btnCancel = $('#primary .comments .save-comment .cancel');
        const btnAddComment = $('#primary #btn-add-comment');

        let isDisplayAddComment = false;
        if (input != null) {
            input.onclick = () => {
                if (!isDisplayAddComment) {
                    interaction.style.display = 'block';
                    isDisplayAddComment = true;
                }
            }
        }

        if (btnCancel != null) {
            btnCancel.onclick = () => {
                if (isDisplayAddComment) {
                    interaction.style.display = 'none';
                    isDisplayAddComment = false;
                    input.value = '';
                }
            }
        }

        if (btnAddComment != null) {
            btnAddComment.onclick = () => {
                let commentContent = input.value;

                // Insert into database
                callAPI(urlCommentAPI, {
                    method: 'POST',
                    body: JSON.stringify({
                        content: commentContent,
                        userId: ${user.id},
                        videoId: ${video.id}
                    })
                })

                // render page
                let renderComment = $('#render-comment');
                renderComment.innerHTML = `
                <div class="comment" data-id=${0}>
                    <figure>
                        <img src="<c:url value='${user.avatarUrl}'/>" alt="avatar">
                    </figure>
                    <div>
                        <div class="name">
                            <a href="<c:url value='/channel?id=${user.id}'/>">${user.name}</a>
                            <span>0 giây trước</span>
                        </div>
                        <div class="comment-content">
                            ` + commentContent + `
                            <div class="interaction">
                                <span>
                                    <i class="fal fa-thumbs-up"></i>
                                    0
                                </span>
                                <span>
                                    <i class="fal fa-thumbs-down"></i>
                                    0
                                </span>
                                <span>
                                    <i class="fal fa-ellipsis-v options w-40px h-40px lh-40px text-center rounded-circle"></i>
                                    <div class="comment-edit-delete bg-white rounded">
                                        <div class="cursor-p">
                                            <i class="fal fa-edit"></i>
                                            <span>Chỉnh sửa</span>
                                        </div>
                                        <div class="cursor-p">
                                            <i class="fal fa-trash-alt"></i>
                                            <span>Xóa</span>
                                        </div>
                                    </div>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                ` + renderComment.innerHTML;
                interaction.style.display = 'none';
                input.value = '';
                // callAPI()
                isDisplayAddComment = false;
            }
        }
    }

    // edit comment
    const editComment = function () {
        const options = $$('#primary .comments .comment-content .options');
        const btnEdit = $('#primary .comments .comment-content .comment-edit-delete');
        let isDisplay = false;
        if (options != null) {
            options.onclick = () => {
                if (!isDisplay) {
                    btnEdit.style.display = 'block';
                } else {
                    btnEdit.style.display = 'none';
                }
                isDisplay = !isDisplay;
            }
        }
    }

    commentInteraction();

    const callAPI = function (url, options) {
        fetch(url, options)
            .then((resp) => {
                console.log(resp);
            })
    }

    const formatNumber = function (number) {
        let result;
        if (number > 1000000) {
            let coefficient = Math.floor(number / 1000000);
            result = coefficient + ' Tr';
        } else if (number > 1000) {
            let coefficient = Math.floor(number / 1000);
            result = coefficient + ' N';
        } else {
            result = number;
        }
        return result;
    }
</script>

</body>

</html>