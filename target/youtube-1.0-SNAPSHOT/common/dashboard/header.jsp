<%--
  Created by IntelliJ IDEA.
  User: kitsu
  Date: 10/2/2021
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="/common/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>header</title>
    <link rel="stylesheet" href="<c:url value='/templates/header/assets/css/base.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/header/assets/css/style.css'/>" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/templates/header/assets/Fontawesome_pro_v6/css/all.css'/>" type="text/css" media="all">
</head>

<body>
<!-- Begin: header -->
<header>

    <!-- begin: start -->
    <div id="start">
        <div id="menu-bar" class="text-center">
            <i class="fal fa-bars"></i>
        </div>
        <a href="<c:url value='/#'/>" id=logo>
            <img src="<c:url value='/templates/header/assets/img/youtube-logo.png'/>" alt="youtube-logo">
        </a>
    </div>
    <!-- end: start -->

    <!-- begin: menu bar behavior -->
    <div id="menu-behavior">
        <div class="session">
            <a href="<c:url value='/#'/>" class="active">
                <i class="fal fa-home-lg-alt"></i>
                <span>Trang chủ</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-compass"></i>
                <span>Khám phá</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-list-alt"></i>
                <span>Kênh đăng kí</span>
            </a>
        </div>
        <hr/>
        <div class="session">
            <a href="<c:url value='/#'/>">
                <i class="fal fa-photo-video"></i>
                <span>Thư viện</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-history"></i>
                <span>Video đã xem</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-file-video"></i>
                <span>Video của bạn</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-clock"></i>
                <span>Xem sau</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-thumbs-up"></i>
                <span>Video đã thích</span>
            </a>
        </div>
        <hr/>
        <div class="session session-channel">
            <p>KÊNH ĐĂNG KÝ</p>
            <a href="<c:url value='/#'/>">
                <figure><img src="<c:url value="/templates/header/assets/img/avatar.jpg"/>" alt=""></figure>
                <span>Vie Channel - HTV2</span>
            </a>
            <a href="<c:url value='/#'/>">
                <figure><img src="<c:url value="/templates/header/assets/img/avatar.jpg"/>" alt=""></figure>
                <span>Vie Channel - HTV2</span>
            </a>
            <a href="<c:url value='/#'/>">
                <figure><img src="<c:url value="/templates/header/assets/img/avatar.jpg"/>" alt=""></figure>
                <span>Vie Channel - HTV2</span>
            </a>
        </div>
        <hr/>
        <div class="session">
            <p>DỊCH VỤ KHÁC CỦA YOUTUBE</p>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-gamepad-alt"></i>
                <span>Trò chơi</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-signal-stream"></i>
                <span>Sự kiện trực tiếp</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-trophy"></i>
                <span>Thể thao</span>
            </a>
        </div>
        <hr/>
        <div class="session">
            <a href="<c:url value='/#'/>">
                <i class="fal fa-cog"></i>
                <span>Cài đặt</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-flag-alt"></i>
                <span>Lịch sử báo cáo</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-question-circle"></i>
                <span>Trợ giúp</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-exclamation-square"></i>
                <span>Gửi phản hồi</span>
            </a>
        </div>
        <hr/>
        <div class="session session-info">
            <div>
                <a href="<c:url value='/#'/>">Giới thiệu</a>
                <a href="<c:url value='/#'/>">Báo chí</a>
                <a href="<c:url value='/#'/>">Liên hệ với chúng tôi</a>
                <a href="<c:url value='/#'/>">Người sáng tạo</a>
                <a href="<c:url value='/#'/>">Quảng cáo</a>
                <a href="<c:url value='/#'/>">Nhà phát triển</a>
            </div>
            <div>
                <a href="<c:url value='/#'/>">Điều khoản</a>
                <a href="<c:url value='/#'/>">Quyền riêng tư</a>
                <a href="<c:url value='/#'/>">Chính sách và an toàn</a>
                <a href="<c:url value='/#'/>">Cách Youtube hoạt động</a>
                <a href="<c:url value='/#'/>">Thử các tính năng mới</a>
            </div>
            <div class="copy-right">
                &copy; 2021 Google LLC
            </div>
        </div>
    </div>
    <!-- end: menu bar behavior-->

    <!-- begin: center -->
    <div id="center">
        <label>
            <input type="text" placeholder="Tìm kiếm">
        </label>
        <i class="fal fa-search btn-search text-center"></i>
        <i class="fal fa-microphone btn-voice text-center"></i>
    </div>
    <!-- end: center -->

    <!-- begin: end -->
    <div id="end">
        <i class="fal fa-video-plus text-center"></i>
        <i class="fal fa-tv-alt text-center"></i>
        <i class="fal fa-bell text-center"></i>
        <img src="<c:url value="/templates/header/assets/img/avatar.jpg"/>" alt="avatar" id="avatar">
    </div>
    <!-- end: end -->

    <!-- profile -->
    <div id="profile">
        <div class="session session-info">
            <figure>
                <img src="<c:url value="/templates/header/assets/img/avatar.jpg"/>" alt="">
            </figure>
            <div>
                <p class="name">Viet Do Quoc</p>
                <a href="<c:url value='/#'/>">Quản lý tài khoản Google của ...</a>
            </div>
        </div>
        <hr/>
        <div class="session">
            <a href="<c:url value='/#'/>">
                <i class="fal fa-user-circle"></i>
                <span>Kênh của bạn</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-donate"></i>
                <span>Giao dịch mua và gói thành viên</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-cog"></i>
                <span>YouTube Studio</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-user-plus"></i>
                <span>Chuyển đổi tài khoản</span>
                <i class="fal fa-chevron-right arrow-right"></i>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-arrow-to-right"></i>
                <span>Đăng xuất</span>
            </a>
        </div>
        <hr/>
        <div class="session">
            <a href="<c:url value='/#'/>">
                <i class="fal fa-moon"></i>
                <span>Giao diện: giao diện thiết bị</span>
                <i class="fal fa-chevron-right arrow-right"></i>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-language"></i>
                <span>Ngôn ngữ: Tiếng Việt</span>
                <i class="fal fa-chevron-right arrow-right"></i>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-globe-africa"></i>
                <span>Địa điểm: Việt Nam</span>
                <i class="fal fa-chevron-right arrow-right"></i>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-cogs"></i>
                <span>Cài đặt</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-shield-check"></i>
                <span>Dữ liệu của bạn trong YouTube</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-question-circle"></i>
                <span>Trợ giúp</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-exclamation-square"></i>
                <span>Gửi phản hồi</span>
            </a>
            <a href="<c:url value='/#'/>">
                <i class="fal fa-keyboard"></i>
                <span>Phím tắt</span>
            </a>
        </div>
        <hr/>
        <div class="session">
            <a href="<c:url value='/#'/>">
                <span>Chế độ hạn chế: Đã tắt</span>
                <i class="fal fa-chevron-right arrow-right"></i>
            </a>
        </div>
    </div>

</header>

<script src="<c:url value='/templates/header/assets/js/main.js'/>"></script>

</body>

</html>
