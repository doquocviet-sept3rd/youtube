<%@ page contentType="text/html;charset=UTF-8; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/common/taglibs.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="<c:url value='/templates/channel/css/channel.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/templates/channel/css/responsive.css'/>" type="text/css">
    <title>Channel</title>
</head>
<body>
<div id="userchannel">
    <figure>
        <img  id="chanelcoverimage" src="https://i.ytimg.com/vi/1rgGwx7Qtjc/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCzNXmfnZ-ALGdnyUOFwed9Wh-IYg" alt="Channel Cover Image">
    </figure>

    <!-- begin aboutchanel -->
    <div id="aboutchanel">
        <figure>
            <img id="avtmychanel" src="https://yt3.ggpht.com/Vai9EFHgVVYHlAax-zamzZUTqXV3pfBqxkHiMwafvtIwBDTTZfqKkiqoRmxT2I6bEJeL03AKgg=s88-c-k-c0x00ffffff-no-rj" alt="avatar">
            <div>
                <p>Đen Vâu Official</p>
                <span>10tr người đăng ký</span>
            </div>
        </figure>
        <input type="submit" value="ĐĂNG KÝ" id="subscribeb" />
    </div>
    <!-- end aboutchanel -->

    <!-- begin videochanel -->
    <div id="videochanel">
        <a href="#" class="session">
            <figure>
                <img src="https://i.ytimg.com/vi/wYyteSWn9Cc/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAD5o3ElfRMZqv6alMCUozaPGwmJA"
                     alt="">
                <div>
                    <p class="name">Đen: Nhiều  năm nữa</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">5,7 Tr lượt xem &#183; 4 ngày trước</p>
                </div>
            </figure>

        </a>
        <a href="#" class="session">
            <figure>
                <img src="	https://i.ytimg.com/vi/mpaxHOoAb9Y/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLB6xm1oqhiiKQ0nSoshCzLXcJ5FAA"
                     alt="">
                <div>
                    <p class="name">Đen: Đi Theo Bóng Mặt Trời</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">100 Tr lượt xem &#183; 2 ngày trước</p>
                </div>
            </figure>

        </a>
        <a href="#" class="session">
            <figure>
                <img src="https://i.ytimg.com/vi/KKc_RMln5UY/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAj6XiqMm3j1NqekRWEUXiOlK851Q"
                     alt="">
                <div>
                    <p class="name">Lối nhỏ</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">999 Tr lượt xem &#183; 2 năm trước</p>
                </div>
            </figure>

        </a>
        <a href="#" class="session">
            <figure>
                <img src="https://i.ytimg.com/vi/vTJdVE_gjI0/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLByHXCYeKbzC7iLWlHRHWTODtSwwA"
                     alt="">
                <div>
                    <p class="name">Đường về nhà</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">180 Tr lượt xem &#183; 1 năm trước</p>
                </div>
            </figure>

        </a>
        <a href="#" class="session">
            <figure>
                <img src="https://i.ytimg.com/vi/ddaEtFOsFeM/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLCJ-89cFfVb2yy5zndh2yXdPuxnKQ"
                     alt="">
                <div>
                    <p class="name">Bài này chill phết</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">158Tr lượt xem &#183; 3 năm trước</p>
                </div>
            </figure>

        </a>
        <a href="#" class="session">
            <figure>
                <img src="https://i.ytimg.com/vi/ddaEtFOsFeM/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLCJ-89cFfVb2yy5zndh2yXdPuxnKQ"
                     alt="">
                <div>
                    <p class="name">Bài này chill phết</p>
                    <p class="user">Đen Vâu Official</p>
                    <p class="info">158Tr lượt xem &#183; 3 năm trước</p>
                </div>
            </figure>

        </a>
    </div>
    <!-- end videochanel -->

    <!-- begin introducechanel -->
    <div id="introducechanel">
        <p id="namechanel">Tên Channel: Đen Vâu</p>
        <p id="email">Email liên hệ: denvau@gmail.com</p>
        <p id="createdate">Ngày thành lập: 20/12/2001</p>
    </div>
    <!-- end introducechanel -->
</div>
<script src="<c:url value='/templates/channel/js/main.js'/>" type="text/javascript"></script>
</body>
</html>