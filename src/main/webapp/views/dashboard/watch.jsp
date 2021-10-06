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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <link rel="stylesheet" href="/templates/common/assets/font-icon/themify-icons-font (1)/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="/templates/common/assets/icon-Boxicons/boxicons-2.0.9/boxicons-2.0.9/css/boxicons.min.css">
    <link rel="stylesheet" href="/templates/common/assets/css/base.css">
    <link rel="stylesheet" href="/templates/common/assets/css/Bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="/templates/common/assets/css/Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/templates/common/assets/css/Bootstrap/css/bootstrap-grid.css">
    <link rel="stylesheet" href="/templates/common/assets/css/header.css">
    <link rel="stylesheet" href="/templates/common/assets/css/container.css">
    <link rel="stylesheet" href="./video.css">
    <link rel="stylesheet" href="./video_responsive.css">
    <title>Document</title>
</head>
<body>
<div class="main">
    <div class="container-video">
        <div class="container">
            <div class="row video-product">
                <div class="col-8 video_container-left">
                    <div class="video_main">
                        <iframe width="100%" height="512" src="https://www.youtube.com/embed/WRfFhZqc5gk?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                        </iframe>

                        <div class="video_title">
                            <h3 class="video_title-heading">F8 có gì mới trong lần trở lại này?</h3>
                        </div>

                        <div class="video_intro">
                            <div class="video_info-left">
                                <div class="video_info-view">
                                    <span>8.705 lượt xem</span>
                                </div>

                                <i class="bx bxs-circle video_icon-dot"></i>

                                <div class="video_info-date">
                                    <span>14 thg 7, 2021</span>
                                </div>
                            </div>

                            <div class="video_info-right">
                                <ul class="video_info-social">
                                    <li class="video_info-social-item">
                                        <i class="bx bxs-like video_icon-right like-click-change">
                                        </i>
                                        <span class="amount_like-click-change">542</span>
                                        <div class="info_info-right-line line-click-change">
                                        </div>
                                        <span class="like-up-down"></span>

                                    </li>

                                    <li class="video_info-social-item dislike-click-main">
                                        <i class="bx bxs-dislike video_icon-right dislike-click-change">
                                        </i>
                                        <span class="amount-dislike-click-change">0</span>
                                        <span class="dislike-up-down"></span>
                                    </li>

                                    <li class="video_info-social-item video_info-share">
                                        <i class="bx bxs-share video_icon-right"></i>
                                        <span class="video_info-decs-right">Chia sẻ</span>
                                    </li>



                                    <li class="video_info-social-item video_info-save">
                                        <i class="bx bx-list-plus video_icon-right"></i>
                                        <span class="video_info-decs-right">Lưu</span>
                                    </li>

                                    <li class="video_info-social-item video_icon-right">
                                        <i class="bx bx-dots-horizontal-rounded bxf-three-dots"></i>
                                        <ul class="video_info-social-list-report">
                                            <li class="video_info-social-item-report">
                                                <i class="bx bxs-flag-alt bxf-flag-alt"></i>
                                                <span>Báo vi phạm</span>
                                            </li>

                                            <li class="video_info-social-item-report">
                                                <i class="bx bx-table bxf-table"></i>
                                                <span>Mở bản chép lời</span>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>

                        </div>

                        <div class="video_channel">
                            <ul class="video_channel-main">
                                <li class="video_channel-item">
                                    <img src="../assets/img/f8-myfavourite.jpg" alt="" class="video_channel-img">
                                </li>

                                <li class="video_channel-item">
                                    <div class="video_channel-info">
                                        <p>F8 Official
                                            <i class="bx bxs-check-circle bxf-check-circle"></i>
                                        </p>
                                    </div>

                                    <div class="video_channel-subscribe">
                                        <p>124 N người đăng ký</p>
                                    </div>
                                </li>
                            </ul>

                            <div class="video_channel-register-btn">
                                <button class="video_btn-subscribe">
                                    <a class="video_btn-content">Đăng ký</a>
                                </button>
                                <i class="bx bx-bell bxf-bell"></i>
                            </div>
                        </div>


                        <div class="video_channel-desc">
                            <div class="video_channel-desc-main">
                                <p>Bạn muốn học lập trình hiệu quả hơn không?<br>
                                    Hãy học tại trang web <a href="" style="text-decoration:none">http://fullstack.edu.vn</a> thay vì Youtube. Lý do tại sao mời bạn bấm vào đây: <a href="" style="text-decoration:none">https://www.youtube.com/watch?v=f5hbm...</a>
                                </p>
                            </div>

                            <div class="video_channel-sub-desc">
                                #hoclaptrinh #frontend #html-css  #javascript #backend #devops<br>
                                ---------------------------------------<br>

                                ☻ Phần mềm sử dụng trong video:<br>
                                Công cụ dịch Tiếng Anh: <a href="" style='text-decoration: none'>http://bit.ly/2Wsuhet</a><br>
                                Công cụ đo đạc giao diện web: <a href="" style='text-decoration: none;'> http://bit.ly/3muevdD</a><br>
                                Công cụ viết CV xin việc chuyên nghiệp: <a href="" style='text-decoration: none;'> https://mycv.vn</a><br>

                                <br>

                                ☻ Tiện ích cho Visual Studio Code:<br>
                                Gợi ý code: Tabnine Autocomplete AI (<a href="" style="text-decoration: none">http://bit.ly/34rl0Yr</a>)<br>
                                Tự động đóng thẻ: Auto Close Tag (<a href="" style="text-decoration: none">http://bit.ly/3mwoJue</a>)<br>
                                Tự động đổi tên thẻ đóng/mở: Auto Rename Tag (<a href="" style="text-decoration: none">http://bit.ly/3nB0ADS</a>)<br>
                                Thêm màu sắc cho các cặp ngoặc: Bracket Pair Colorizer (<a href="" style="text-decoration: none">http://bit.ly/37wgXfC</a>)<br>
                                Icon theme: Material Icon Theme (<a href="" style="text-decoration: none">http://bit.ly/37ukU4b</a>)<br>
                                Hiển thị thông tin Git (commit, author, ...): Gitlens (<a href="" style="text-decoration: none">http://bit.ly/3gYlaf9</a>)<br>

                                <br>

                                ☻ Khóa học lập trình web MIỄN PHÍ:<br>
                                Kiến thức cơ bản, cốt lõi cho dân IT: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/less...</a><br>
                                HTML, CSS từ zero đến Hero: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/html...</a><br>
                                Xây dựng web responsive: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/resp...</a><br>
                                Lập trình Javascript cơ bản: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/java...</a><br>
                                Lập trình Javascript nâng cao: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/java...</a><br>
                                Xây dựng web với Node & Express: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/nodejs</a><br>
                                HTML, CSS tips: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/html...</a><br>
                                Ứng dụng cảnh báo khi sờ lên mặt: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses/tool...</a><br>
                                Xem thêm tại: <a href="" style="text-decoration: none">https://fullstack.edu.vn/courses</a><br>

                                <br>

                                ☻ Chú ý :<br>
                                - Không văng tục chửi bậy, bình luận có văn hóa.<br>
                                - Không hỏi khi chưa xem xong video.<br>
                                Sai phạm sẽ được mời khỏi kênh.<br>

                                ☻ F8 là nơi học lập trình để đi làm!
                                Tại sao bạn nên học lập trình tại đây? Ở đây chúng tôi có:<br>
                                - Nội dung bài học chỉn chu và chi tiết giúp học viên hiểu từ cái gốc<br>
                                - Kỹ năng sư phạm khác biệt từ người dạy giúp học viên có thêm nhiều động lực<br>
                                - Hình ảnh và âm thanh chất lượng cao giúp học viên thêm hứng thú<br>

                                🍺 Buy me a beer<br>
                                <a href="" style="text-decoration: none">https://www.buymeacoffee.com/f8official</a><br>

                                <br>

                                F8 Official<br>
                                (c) Sơn Đặng<br>
                                Website: <a href="" style="text-decoration: none">https://fullstack.edu.vn</a><br>
                                Facebook cá nhân: <a href="" style="text-decoration: none">https://facebook.com/sondnmc</a><br>
                                Nhóm Học Lập Trình Web: <a href="" style="text-decoration: none">https://www.facebook.com/groups/f8off...</a><br>
                                Email: sondnf8@gmail.com<br>

                                <br>

                                © Bản quyền thuộc về Channel F8 Official ☞ Do not Reup<br>
                                © Nghiêm cấm sử dụng video nhằm mục đích thương mại dưới mọi hình thức.<br>
                            </div>

                            <p class="video-click-htt">Hiển thị thêm</p>
                        </div>


                        <div class="video_comment">
                            <div class="video_comment-amount">
                                <p>181 bình luận</p>
                            </div>

                            <div class="video_comment-sort">
                                <i class="bx bx-menu-alt-left bxf-menu-alt-left">
                                </i>
                                <span>Sắp xếp theo</span>
                            </div>
                        </div>

                        <div class="video_comment-user">
                            <div class="video_comment-user-img">
                                <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="video_comment-user-img-main">
                            </div>

                            <div class="video_comment-user-input">
                            </div>
                            <input type="text" name="" id="" class="video-input" placeholder="Bình luận công khai...">

                            <div class="video_comment-user-btn">
                                <button class="video_comment-btn-cancel">Hủy</button>
                                <button class="video_comment-btn-cmt">Bình luận</button>
                            </div>
                        </div>

                        <div class="video-list-comments">
                            <div class="video_comment-user-response">
                                <img src="../assets/img/f8-myfavourite.jpg" alt="Avatar Channel Comment" class="video_comment-user-response-img">
                                <div class="video_comment-user-response-main">
                                    <div class="video_comment-user-response-main-title">
                                        <div class="video_comment-user-response-main-title-name">
                                            <span>F8 Official
                                                <i class="bx bxs-check-circle bxf-check-circle"></i>
                                            </span>
                                        </div>

                                        <div class="video_comment-user-resspanonse-main-title-date">
                                            <span>1 tháng trước</span>
                                        </div>
                                    </div>

                                    <div class="video_comment-user-response-desc">
                                        <span>Anh em học code đến đâu rồi nào.Comment để Anh Sơn biết nào
                                                <span style="color:var(--color-active) !important">❤❤❤</span>
                                        </span>
                                    </div>

                                    <ul class="video_comment-user-response-social">
                                        <li class="video_comment-user-response-social-item">
                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                            <span class="like-click-add">2,1 N</span>
                                        </li>

                                        <li class="video_comment-user-response-social-item">
                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                            <span></span>
                                        </li>

                                        <li class="video_comment-user-response-social-item">
                                            <span class="video_comment-feedback feedback-one">Phản hồi</span>
                                        </li>

                                    </ul>

                                    <div class="box-response-one">
                                        <div class="box-response-img">
                                            <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="box-response-img-main">
                                        </div>

                                        <div class="box-response-input">
                                        </div>
                                        <input type="text" name="" id="" class="box-response-input-main-one" placeholder="Phản hồi công khai...">

                                        <div class="box-response-btn-one">
                                            <button class="box-response-btn-cancel-one">Hủy</button>
                                            <button class="box-response-btn-cmt-one">Phản hồi</button>
                                        </div>
                                    </div>


                                    <div class="video_comment-list-down">

                                        <div class="video_comment-user-response-arrow-down">
                                            <i class="bx bxs-down-arrow bxf-down-arrow">
                                            </i>
                                            <span class="clickShowHide">Xem 4 câu trả lời</span>
                                        </div>

                                        <div class="video_comment-list-down-main">
                                            <div class="video_comment-user-response sub-user-response">
                                                <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="sub-user-response-img">
                                                <div class="video_comment-user-response-main">
                                                    <div class="video_comment-user-response-main-title">
                                                        <div class="video_comment-user-response-main-title-name">
                                                            <span>Long HD
                                                                <i class="bx bxs-check-circle bxf-check-circle"></i>
                                                            </span>
                                                        </div>

                                                        <div class="video_comment-user-resspanonse-main-title-date">
                                                            <span>1 tháng trước</span>
                                                        </div>
                                                    </div>

                                                    <div class="video_comment-user-response-desc">
                                                        <span>Em đang code đều đặn từng ngày đây anh ạ.
                                                        </span>
                                                    </div>

                                                    <ul class="video_comment-user-response-social">
                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                            <span>1,2 N</span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                            <span></span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <span class="video_comment-feedback-special">Phản hồi</span>
                                                        </li>
                                                    </ul>

                                                </div>
                                            </div>

                                            <div class="video_comment-user-response sub-user-response">
                                                <img src="../assets/img/pham-huy-hoang.jpg" alt="Avatar Channel Comment" class="sub-user-response-img">
                                                <div class="video_comment-user-response-main">
                                                    <div class="video_comment-user-response-main-title">
                                                        <div class="video_comment-user-response-main-title-name">
                                                                <span>Phạm Huy Hoàng
                                                                    <i class="bx bxs-check-circle bxf-check-circle"></i>
                                                                </span>
                                                        </div>

                                                        <div class="video_comment-user-resspanonse-main-title-date">
                                                            <span>1 tháng trước</span>
                                                        </div>
                                                    </div>

                                                    <div class="video_comment-user-response-desc">
                                                        <span>Hello mọi người mình là thành viên mới ✌.Có gì mong mọi người giúp đỡ nhé.
                                                        </span>
                                                    </div>

                                                    <ul class="video_comment-user-response-social">
                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                            <span>1 N</span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                            <span></span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <span class="video_comment-feedback-special">Phản hồi</span>
                                                        </li>
                                                    </ul>

                                                </div>
                                            </div>

                                            <div class="video_comment-user-response sub-user-response">
                                                <img src="../assets/img/laptrinhvienTV.jpg" alt="Avatar Channel Comment" class="sub-user-response-img">
                                                <div class="video_comment-user-response-main">
                                                    <div class="video_comment-user-response-main-title">
                                                        <div class="video_comment-user-response-main-title-name">
                                                            <span>Lập Trình Viên TV

                                                            </span>
                                                        </div>

                                                        <div class="video_comment-user-resspanonse-main-title-date">
                                                            <span>1 tháng trước</span>
                                                        </div>
                                                    </div>

                                                    <div class="video_comment-user-response-desc">
                                                            <span> <a href="" style="text-decoration: none">@Phạm Huy Hoàng</a> Lại xạo rồi
                                                            </span>
                                                    </div>

                                                    <ul class="video_comment-user-response-social">
                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                            <span>1,6 N</span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                            <span></span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <span class="video_comment-feedback-special">Phản hồi</span>
                                                        </li>
                                                    </ul>

                                                </div>
                                            </div>

                                            <div class="video_comment-user-response sub-user-response">
                                                <img src="../assets/img/A_le_kha_giap.jpg" alt="Avatar Channel Comment" class="sub-user-response-img">
                                                <div class="video_comment-user-response-main">
                                                    <div class="video_comment-user-response-main-title">
                                                        <div class="video_comment-user-response-main-title-name">
                                                            <span>Lê Khả Giáp

                                                            </span>
                                                        </div>

                                                        <div class="video_comment-user-resspanonse-main-title-date">
                                                            <span>1 tháng trước</span>
                                                        </div>
                                                    </div>

                                                    <div class="video_comment-user-response-desc">
                                                        <span>Vừa đi bộ xuyên việt, vừa code cảm giác quá là đã nha mọi người.
                                                        </span>
                                                    </div>

                                                    <ul class="video_comment-user-response-social">
                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                            <span>1,8 N</span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                            <span></span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <span class="video_comment-feedback-special">Phản hồi</span>
                                                        </li>
                                                    </ul>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="video-sub-list-comments">
                                <div class="video_comment-user-response">
                                    <img src="../assets/img/lap_trinh_vien.jpg" alt="Avatar Channel Comment" class="video_comment-user-response-img">
                                    <div class="video_comment-user-response-main">
                                        <div class="video_comment-user-response-main-title">
                                            <div class="video_comment-user-response-main-title-name">
                                                <span>Coder vô danh</span>
                                            </div>

                                            <div class="video_comment-user-resspanonse-main-title-date">
                                                <span>20 ngày trước</span>
                                            </div>
                                        </div>

                                        <div class="video_comment-user-response-desc">
                                            <span>Cảm giác vừa code vừa nghe nhạc thật là phiêu anh em ạ.</span>
                                        </div>

                                        <ul class="video_comment-user-response-social">
                                            <li class="video_comment-user-response-social-item">
                                                <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                <span class="like-click-add">1,5 N</span>
                                            </li>

                                            <li class="video_comment-user-response-social-item">
                                                <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                <span class="like-click-subtraction"></span>
                                            </li>

                                            <li class="video_comment-user-response-social-item">
                                                <span class="video_comment-feedback feedback-two">Phản hồi</span>
                                            </li>
                                        </ul>

                                        <div class="box-response-two">
                                            <div class="box-response-img">
                                                <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="box-response-img-main">
                                            </div>

                                            <div class="box-response-input">
                                            </div>
                                            <input type="text" name="" id="" class="box-response-input-main-two" placeholder="Phản hồi công khai...">

                                            <div class="box-response-btn-two">
                                                <button class="box-response-btn-cancel-two">Hủy</button>
                                                <button class="box-response-btn-cmt-two">Phản hồi</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="video_comment-user-response-third">

                                    <div class="video_comment-user-response">
                                        <img src="../assets/img/freecodecamp.jpg" alt="Avatar Channel Comment" class="video_comment-user-response-img">
                                        <div class="video_comment-user-response-main">
                                            <div class="video_comment-user-response-main-title">
                                                <div class="video_comment-user-response-main-title-name">
                                                    <span>freeCodeCamp.org
                                                        <i class="bx bxs-check-circle bxf-check-circle"></i>
                                                    </span>
                                                </div>

                                                <div class="video_comment-user-resspanonse-main-title-date">
                                                    <span>4 ngày trước</span>
                                                </div>
                                            </div>

                                            <div class="video_comment-user-response-desc">
                                                <span>Anh em qua web mình học code đi.Học mọi lúc mọi nơi(kết hợp cả F8 là một điều tuyệt vời)</span>
                                            </div>

                                            <ul class="video_comment-user-response-social">
                                                <li class="video_comment-user-response-social-item">
                                                    <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                    <span class="like-click-add">1,7 N</span>
                                                </li>

                                                <li class="video_comment-user-response-social-item">
                                                    <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                    <span class="like-click-subtraction"></span>
                                                </li>

                                                <li class="video_comment-user-response-social-item">
                                                    <span class="video_comment-feedback feedback-three">Phản hồi</span>
                                                </li>
                                            </ul>

                                            <div class="box-response-three">
                                                <div class="box-response-img">
                                                    <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="box-response-img-main">
                                                </div>

                                                <div class="box-response-input">
                                                </div>
                                                <input type="text" name="" id="" class="box-response-input-main-three" placeholder="Phản hồi công khai...">

                                                <div class="box-response-btn-three">
                                                    <button class="box-response-btn-cancel-three">Hủy</button>
                                                    <button class="box-response-btn-cmt-three">Phản hồi</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="video_comment-user-response-fourth">
                                        <div class="video_comment-user-response">
                                            <img src="../assets/img/khanh-hung.jpg" alt="Avatar Channel Comment" class="video_comment-user-response-img">
                                            <div class="video_comment-user-response-main">
                                                <div class="video_comment-user-response-main-title">
                                                    <div class="video_comment-user-response-main-title-name">
                                                        <span>Khánh Hùng - Đời Sống Lập Trình Viên</span>
                                                    </div>

                                                    <div class="video_comment-user-resspanonse-main-title-date">
                                                        <span>12 ngày trước</span>
                                                    </div>
                                                </div>

                                                <div class="video_comment-user-response-desc">
                                                    <span>Kiến thức là miễn phí.Và chỉ cần bạn nỗ lực thôi.Cố gắng lên nào anh em 💪</span>
                                                </div>

                                                <ul class="video_comment-user-response-social">
                                                    <li class="video_comment-user-response-social-item">
                                                        <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                        <span class="like-click-add">1,2 N</span>
                                                    </li>

                                                    <li class="video_comment-user-response-social-item">
                                                        <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                        <span class="like-click-subtraction"></span>
                                                    </li>

                                                    <li class="video_comment-user-response-social-item">
                                                        <span class="video_comment-feedback feedback-four">Phản hồi</span>
                                                    </li>
                                                </ul>

                                                <div class="box-response-four">
                                                    <div class="box-response-img">
                                                        <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="box-response-img-main">
                                                    </div>

                                                    <div class="box-response-input">
                                                    </div>
                                                    <input type="text" name="" id="" class="box-response-input-main-four" placeholder="Phản hồi công khai...">

                                                    <div class="box-response-btn-four">
                                                        <button class="box-response-btn-cancel-four">Hủy</button>
                                                        <button class="box-response-btn-cmt-four">Phản hồi</button>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>


                                        <div class="video_comment-user-response-fifth">
                                            <div class="video_comment-user-response">
                                                <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="video_comment-user-response-img">
                                                <div class="video_comment-user-response-main">
                                                    <div class="video_comment-user-response-main-title">
                                                        <div class="video_comment-user-response-main-title-name">
                                                            <span>Long HD
                                                                <i class="bx bxs-check-circle bxf-check-circle"></i>
                                                            </span>
                                                        </div>

                                                        <div class="video_comment-user-resspanonse-main-title-date">
                                                            <span>1 mili giây trước</span>
                                                        </div>
                                                    </div>

                                                    <div class="video_comment-user-response-desc">
                                                        <span>Cố gắng lên anh em.Hành động sẽ chứng minh mọi thứ</span>
                                                    </div>

                                                    <ul class="video_comment-user-response-social">
                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-like bxr-like icon_social-comment-active-like"></i>
                                                            <span class="like-click-add">1,4 N</span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <i class="bx bxs-dislike bxr-dislike icon_social-comment-active-dislike"></i>
                                                            <span class="like-click-subtraction"></span>
                                                        </li>

                                                        <li class="video_comment-user-response-social-item">
                                                            <span class="video_comment-feedback feedback-five">Phản hồi</span>
                                                        </li>
                                                    </ul>

                                                    <div class="box-response-five">
                                                        <div class="box-response-img">
                                                            <img src="../assets/img/AE_LONG.jpg" alt="Avatar Channel Comment" class="box-response-img-main">
                                                        </div>

                                                        <div class="box-response-input">
                                                        </div>
                                                        <input type="text" name="" id="" class="box-response-input-main-five" placeholder="Phản hồi công khai...">

                                                        <div class="box-response-btn-five">
                                                            <button class="box-response-btn-cancel-five">Hủy</button>
                                                            <button class="box-response-btn-cmt-five">Phản hồi</button>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-4 video_container-right">

                    <div class="product_video">
                        <a href="video2.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video2.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">6:35</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/f8-myfavourite.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Lần trở lại này F8 sẽ làm gì cho các bạn? Học lập trình để đi làm tại F8 nào!</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">F8 Official</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">12 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">1 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video3.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video3.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">15:44</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/f8-myfavourite.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>F8 SẬP? MÌNH ĐÃ FIX NHƯ THẾ NÀO? - FIX BUGS IN THE HOSPITAL</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">F8 Official</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">20 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">24 ngày trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video4.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video4.png" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">34:51</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/f8-myfavourite.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Sinh viên IT đi thực tập cần biết những gì? | Đi thực tập cần chuẩn bị những gì? | Thực tập IT</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">F8 Official</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">98 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">8 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video5.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video5.png" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">10:35</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/tuan-can.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Cung Đường Hòa Lạc Hòa Bình Dành Cho Biker Mê Tốc Độ</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Tuấn Cận Vlog</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">4,2 Tr lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">2 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video6.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video6.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">10:44</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/minh-bup-be.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Tik Tok Phượt - Đi Để Biết Ta Là Ai Trong Cuộc Đời | Minh Motor</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Minh Búp Bê</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">136 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">2 năm trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video7.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video7.png" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">7:54</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/A_navu.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Lần đầu chạy thử Kawasaki Ninja H2 - Phê hết nước chấm | Navu Vlog</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Navu Vlog</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">59 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">2 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video8.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video8.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">17:27</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/le-gia-huy.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Thử Thách Ôm Cua Không Lấn Lane Đèo Omega</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Lê Gia Huy</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">39 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">5 ngày trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video9.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video9.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">4:59</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/K-ICM.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Đi Đi Đi - Xách ba lô lên và đi (Cuộc sống được bao lâu mà bạn phải chờ đợi)</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">K-ICM Official</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">5,3 Tr lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">3 năm trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video10.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video10.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">5:30</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/tik_tokNH.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Ngẫu hứng-Bóng Tối Trước Bình Minh Remix (DJ QT Mix) Trai xinh gái đẹp trong Bar</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">TikTok QT - Dj QT</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">2,9 Tr lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">2 năm trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video11.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video11.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">5:46</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/HoaNguyen_Official.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Đại Thiên Bồng - Lộ Gia | 大天蓬 - 璐爷 (DJ 阿超 Remix) Cổ Phong Thần Khúc - TikTok</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Hoa Nguyễn Official</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">3,4 Tr lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">8 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video12.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video12.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">3:32</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/Alan_Walker.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Alan Walker - Faded (Bản nhạc hay nhất thế giới)</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Alan Walker</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">3,1 T lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">5 năm trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video13.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video13.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">11:59</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/k+_plus.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>WEST HAM - LEICESTER | ANTONIO TỎA SÁNG, BÚA TẠ ĐẬP NÁT BẦY CÁO TẠI LONDON | NGOẠI HẠNG ANH 2021/22</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">K-plus Sports</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">666 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">1 ngày trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video14.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video14.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">32:42</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/cam_bong_da.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Ngôi đền huyền thoại | LIONEL MESSI (Phần 3)</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Cảm bóng đá</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">196 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">5 ngày trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video15.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video15.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">8:09</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/tuyen_van_hoa.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>TIN TRƯA 7/8 | MESSI VỀ VỚI PSG ĐỂ GIEO ÁC MỘNG CHO MỌI ĐỘI BÓNG TRÊN TOÀN THẾ GIỚI</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">Tuyền Văn Hóa</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">360 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">18 ngày trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="product_video">
                        <a href="video16.html" class="product_video-link">
                            <div class="product_video-img">
                                <img  src="../assets/img/video16.jpg" alt="Avatar Video" class="product_video-img-main">
                                <span class="product_video-img-time">25:58</span>

                                <div class="videos-icon-play">
                                    <i class="bx bx-play"></i>
                                </div>

                                <ul class="videos_list-icon-hover">
                                    <li class="videos_item-icon-hover videos_item-icon-hover-time">
                                        <i class="bx bxs-time bxf-time"></i>

                                        <div class="list-icon-skiing-time">
                                            <span>Xem sau</span>
                                        </div>
                                    </li>

                                    <li class="videos_item-icon-hover videos_item-icon-hover-list-ul">
                                        <i class="bx bx-list-ul bxf-list-ul"></i>

                                        <div class="list-icon-skiing-ul">
                                            <span>Thêm vào danh sách chờ</span>
                                        </div>
                                    </li>
                                </ul>


                            </div>

                            <div class="product_video_content">
                                <div class="product_video-img-user">
                                    <img src="../assets/img/man_nhan_tv.jpg" alt="Avatar Channel" style="display: none;">
                                </div>

                                <div class="product_video-description">
                                    <div class="product_video-title-product">
                                        <h4>Khoảnh khắc lịch sử - Messi thâu tóm mọi danh hiệu cá nhân - ăn mừng chức vô địch Copa 2021</h4>
                                    </div>

                                    <div class="product_video_user-chanel">
                                        <span class="product_video_user-name">MÃN NHÃN TV</span>
                                        <span class="product_video_user-verified">
                                                <i class="bx bxs-check-circle"></i>
                                            </span>
                                    </div>

                                    <div class="product_video-info">
                                        <span class="product_video-info-view">883 N lượt xem</span>
                                        <span class="product_video-info-dot">
                                                <i class="fas fa-circle"></i>
                                            </span>
                                        <span class="product_video-info-date">1 tháng trước</span>
                                    </div>

                                    <div class="product_video-option">
                                        <i class="bx bx-dots-vertical-rounded bxf-dots-vertical-rounded-video"></i>
                                    </div>

                                </div>
                            </div>
                        </a>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>

<!-- box_share khi click vào share -->
<div class="video_box-share">
    <div class="video-box-share-content">
        <div class="video_box-share-title">
            <div class="video_box-share-title-left">
                <h3>Chia sẻ</h3>
            </div>

            <div class="video_box-share-title-right">
                <i class="bx bx-x bxf-x"></i>
            </div>
        </div>

        <div class="video-box-list-social">

            <ul class="video_box-share-social">
                <li class="video_box-share-social-item video_box-share-social-item-code">
                    <i class="bx bx-code bx-share-social">
                    </i>
                </li>

                <li class="video_box-share-social-item video_box-share-social-item-facebook">
                    <i class="bx bxl-facebook bx-share-social">
                    </i>
                </li>

                <li class="video_box-share-social-item video_box-share-social-item-whats_app">
                    <i class="bx bxl-whatsapp bx-share-social">
                    </i>
                </li>

                <li class="video_box-share-social-item video_box-share-social-item-twitter">
                    <i class="bx bxl-twitter bx-share-social">
                    </i>
                </li>

                <li class="video_box-share-social-item video_box-share-social-item-email">
                    <i class="bx bx-mail-send bx-share-social">
                    </i>
                </li>

                <li class="video_box-share-social-item video_box-share-social-item-github">
                    <i class="bx bxl-github bx-share-social">
                    </i>
                </li>
            </ul>


            <ul class="video_box-share-social-content">
                <p class="video_box-share-social-content-desc">Nhúng</p>
                <p class="video_box-share-social-content-desc">Facebook</p>
                <p class="video_box-share-social-content-desc">Whatsapp</p>
                <p class="video_box-share-social-content-desc">Twitter</p>
                <p class="video_box-share-social-content-desc">Email</p>
                <p class="video_box-share-social-content-desc">Github</p>
            </ul>

        </div>

        <div class="video-box-share-link">
            <p class="video-box-share-link-main">
                https://www.youtube.com/watch?v=WRfFhZqc5gk
            </p>
            <h4 class="video-box-share-link-copy">
                Sao chép
            </h4>
        </div>

        <div class="video-box-share-input">
            <input type="checkbox" name="" id="" class="share-input">
            <p class="video-box-share-input-title">Bắt đầu tại</p>
        </div>
    </div>
</div>


<!-- box_save khi click vào save -->
<div class="video_box-save">
    <div class="video_box-save-content">
        <div class="video_box-save-title">
            <h4 class="video_box-save-heading">
                Lưu vào...
            </h4>
            <i class="bx bx-x bxf-x bxf-x-save"></i>
        </div>

        <ul class="video_box-list-save">
            <li class="video_box-item-save">
                <div class="video_box-item-save-left">
                    <input type="checkbox" name="" id="" class="video_box-save-input">
                    <span class="video_box-save-input-desc">Xem sau</span>
                </div>

                <i class="bx bxs-lock bxf-lock"></i>
            </li>

            <li class="video_box-item-save">
                <div class="video_box-item-save-left">
                    <input type="checkbox" name="" id="" class="video_box-save-input">
                    <span class="video_box-save-input-desc">Xem sau</span>
                </div>

                <i class="bx bxs-lock bxf-lock"></i>
            </li>

            <li class="video_box-item-save">
                <div class="video_box-item-save-left">
                    <input type="checkbox" name="" id="" class="video_box-save-input">
                    <span class="video_box-save-input-desc">Xem sau</span>
                </div>

                <i class="bx bxs-lock bxf-lock"></i>
            </li>
        </ul>

        <div class="video_box-new-list">
            <i class="bx bx-plus bxf-plus"></i>
            <span>Tạo danh sách phát mới</span>
        </div>

        <ul class="video_box-new-list-down">
            <li class="video_box-new-item-down">
                <div class="video_box-new-input">
                    <label for="" style="font-size: 1.4rem; color: var(--black-color); font-family: 'roboto','sans-serif';">Tên</label>
                    <input type="text" name="" id="" placeholder="Nhập tên danh sách phát..." class="video_box-new-input-main">
                    <label for="" style="font-size: 1.4rem; align-self: flex-end;">0/150</label>
                </div>
            </li>

            <li class="video_box-new-item-down">
                <div class="video_box-new-select">
                    <label for="" style="color: var(--main-color); font-size: 1.4rem;">Quyền riêng tư</label>
                    <select name="" id="" style="font-size: 1.4rem; border: none">
                        <option value="">Công khai</option>
                        <option value="">Không công khai</option>
                        <option value="">Riêng tư</option>
                    </select>
                </div>
            </li>

            <li class="video_box-new-item-down">
                <h4>Tạo</h4>
            </li>
        </ul>
    </div>
</div>


<!-- box subscribe khi click vào unscribe -->
<div class="video_box-subscribe">
    <div class="video_box-subscribe-title">
        <p>Hủy đăng ký F8 Official ?</p>
    </div>

    <div class="video_box-subscribe-select">
        <div class="video_box-subscribe-select-left">
            <p class="video_box-subscribe-select-close">Hủy</p>
        </div>

        <div class="video_box-subscribe-select-right">
            <p class="video_box-subscribe-select-un-scribe">Hủy đăng ký</p>
        </div>
    </div>
</div>


<script src="./video.js"></script>
</body>
</html>