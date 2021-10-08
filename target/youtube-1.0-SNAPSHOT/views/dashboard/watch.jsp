<jsp:useBean id="video" scope="request" type="com.youtube.entities.Video"/>
<jsp:useBean id="videos" scope="request" type="java.util.List"/>
<%--<jsp:useBean id="comments" scope="request" type="java.util.List"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: kitsu
  Date: 10/2/2021
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title><dec:title default="${video.name}"/></title>
</head>

<body>
<!-- begin: primary -->
<div id="primary">
    <div class="video">
        ${video.src}
        <p class="hashtag">
            ${video.hashtag}
        </p>
        <p class="name">
            ${video.name}
        </p>
        <p class="views-time">
            <c:out value="${video.views} lượt xem • ${video.postingTime.day} thg ${video.postingTime.month}, ${video.postingTime.year}"/>
        </p>
        <div class="interaction">
            <i class="fal fa-thumbs-up active"></i>
            <span>${video.likes}</span>
            <i class="fal fa-thumbs-down"></i>
            <span>${video.dislikes}</span>
            <i class="fal fa-share"></i>
            <span>SHARE</span>
            <i class="fal fa-save"></i>
            <span>LƯU</span>
            <i class="fal fa-ellipsis-h"></i>
        </div>
    </div>
    <hr />
    <div class="content">
        <div class="info">
            <div class="profile">
                <figure>
                    <img src="<c:url value="${video.user.avatarUrl}"/>" alt="avatar"/>
                </figure>
                <div>
                    <p>${video.user.name}</p>
                    <span>${video.user.subscribe} người đăng ký</span>
                </div>
            </div>
            <input type="submit" value="ĐĂNG KÝ" />
        </div>
        <div class="expander">
            ${video.content}
<%--            <p>🛎 Nếu thấy video hay hãy nhấn 𝐋𝐈𝐊𝐄 và 𝐒𝐔𝐁𝐒𝐂𝐑𝐈𝐁𝐄 ủng hộ Chuyện Chàng Tom ở đây nha:--%>
<%--            </p>--%>
<%--            <p>https://bit.ly/ChuyenChangTom</p>--%>
<%--            <p>Link MV gốc: https://youtu.be/WeVIWSJkARw</p>--%>
<%--            <p>👆 Click xem thêm:</p>--%>
<%--            <p>▶️ Tổng hợp nhạc viral: https://bit.ly/ChuyenChangTomViralMusics</p>--%>
<%--            <p>▶️ Tổng hợp video hài hước: https://bit.ly/ChuyenChangTomBestFunny</p>--%>
<%--            <p>#PhamNguyenNgoc #CauTraiDungHatMotMinh #B_Entertainment #ChuyenChangTom #CTDHMM</p>--%>
<%--            <p>==========</p>--%>
<%--            <p>Follow Chuyện Chàng Tom tại đây nhé:</p>--%>
<%--            <p>► FANPAGE: https://www.facebook.com/ChuyenChangTom/</p>--%>
<%--            <p>► GROUP: https://www.facebook.com/groups/Chuye...</p>--%>
<%--            <p>► TIKTOK: https://www.tiktok.com/@chuyenchangtom</p>--%>
<%--            <p>► INSTAGRAM: https://www.instagram.com/chuyenchang...</p>--%>
<%--            <p>==========</p>--%>
<%--            <p>➥ Follow Phạm Nguyên Ngọc:</p>--%>
<%--            <p>👉Facebook: https://www.facebook.com/phamnguyenngocc</p>--%>
<%--            <p>👉Fanpage: https://www.facebook.com/pnn.official</p>--%>
<%--            <p>👉Instagram: https://www.instagram.com/pham.nguyen....</p>--%>
<%--            <p>👉Group: https://www.facebook.com/groups/bancu...</p>--%>
<%--            <p>👉TikTok: https://www.tiktok.com/@pham.nguyenngoc</p>--%>
<%--            <p>==========</p>--%>
<%--            <p>© Copyright by B Entertainment - Chuyện Chàng Tom 👉 DO NOT REUP</p>--%>
<%--            <p>Liên hệ quảng cáo hay thắc mắc, khiếu nại về bản quyền âm nhạc và hình ảnh có trong video xin vui--%>
<%--            </p>--%>
<%--            <p>lòng liên hệ trực tiếp qua địa chỉ: hi@buithanhbinh.com để được feedback ngay lập tức.</p>--%>
        </div>
    </div>
    <hr />
    <div class="comments">
<%--        <div class="heading">--%>
<%--            <span>${video.comments.size()} bình luận</span>--%>
<%--            <span>--%>
<%--                <i class="fal fa-sort-amount-up-alt"></i>--%>
<%--                SẮP XẾP THEO--%>
<%--            </span>--%>
<%--        </div>--%>
<%--        <div class="add-comment">--%>
<%--            <figure>--%>
<%--                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar"/>--%>
<%--            </figure>--%>
<%--            <label>--%>
<%--                <input type="text" placeholder="Bình luận công khai...">--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <c:forEach var="comment" items="${comments}">--%>
<%--            <div class="comment">--%>
<%--                <figure>--%>
<%--                    <img src="<c:url value="${comment.user.avatarUrl}"/>" alt="avatar">--%>
<%--                </figure>--%>
<%--                <div>--%>
<%--                    <div class="name">--%>
<%--                        <a href="<c:url value="/channel?id=${comment.user.id}"/>">${comment.user.name}</a>--%>
<%--                        <span>${comment.time}</span>--%>
<%--                    </div>--%>
<%--                    <div class="comment-content">--%>
<%--                        ${comment.content}--%>
<%--                        <div class="interaction">--%>
<%--                        <span>--%>
<%--                            <i class="fal fa-thumbs-up"></i>--%>
<%--                            ${comment.likes}--%>
<%--                        </span>--%>
<%--                            <span>--%>
<%--                            <i class="fal fa-thumbs-down"></i>--%>
<%--                            ${comment.dislikes}--%>
<%--                        </span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
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
                    </div>
                </div>
            </div>
        </div>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">TaLaGio</a>
                    <span>1 năm trước</span>
                </div>
                <div class="comment-content">
                    Bài hát của anh thật sự làm chạm vào lòng người ạ, rất mong có thể được nghe anh hát trực
                    tiếp
                    Bài hát của anh thật sự làm chạm vào lòng người ạ, rất mong có thể được nghe anh hát trực
                    tiếp
                    Bài hát của anh thật sự làm chạm vào lòng người ạ, rất mong có thể được nghe anh hát trực
                    tiếp
                    Bài hát của anh thật sự làm chạm vào lòng người ạ, rất mong có thể được nghe anh hát trực
                    tiếp
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up active"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">TaLaGio</a>
                    <span>1 năm trước</span>
                </div>
                <div class="comment-content">
                    Rất đúng tâm trạng. Hay lắm anh ạ. Người con gái họ k cần mk . thì mk phải cố vượt lên cho
                    họ thấy ❤❤❤
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">TaLaGio</a>
                    <span>1 năm trước</span>
                </div>
                <div class="comment-content">
                    trời ơii bt mà nghe giọng anh muốn tan nát cõi lòng luôn ấy, nổi cả da gà khi tới bài "Bài
                    này buồn lắm", huhu như muốn khóc tới nơi, nghẹn cả cổ :)))))) <br />
                    N a y ở t ô i đ a n g m ư a ! ! !
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">TaLaGio</a>
                    <span>1 năm trước</span>
                </div>
                <div class="comment-content">
                    N a y ở t ô i đ a n g m ư a ! ! !
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="comment">
            <figure>
                <img src="<c:url value="/templates/watch/assets/img/avatar.jpg"/>" alt="avatar">
            </figure>
            <div>
                <div class="name">
                    <a href="<c:url value="/#"/>">Mây</a>
                    <span>2 năm trước</span>
                </div>
                <div class="comment-content">
                    Anh từng đã nói sẽ tốt thôi. Anh chịu đựng giỏi lắm mà.
                    <div class="interaction">
                        <span>
                            <i class="fal fa-thumbs-up"></i>
                            31
                        </span>
                        <span>
                            <i class="fal fa-thumbs-down"></i>
                            31
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
    <c:forEach var="video" items="${videos}">
        <a href="<c:url value="/watch?v=${video.id}"/>" class="session">
            <figure>
                <img src="${video.avatarUrl}" alt="">
            </figure>
            <div>
                <p class="name">${video.name}</p>
                <p class="user">${video.user.name}</p>
                <p class="info">${video.views} lượt xem • ${video.postingTime}</p>
            </div>
            <i class="fal fa-ellipsis-v"></i>
        </a>
    </c:forEach>
</div>
<!-- end: secondary -->

<script src="<c:url value="/templates/watch/assets/js/main.js"/>"></script>
</body>

</html>