package com.youtube.controllers.dashboard;

import com.youtube.entities.Video;
import com.youtube.services.ICommonService;
import com.youtube.services.IUserService;
import com.youtube.services.IVideoService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

import static java.lang.Long.parseLong;

@WebServlet(urlPatterns = {"/channel"})
public class ChannelController extends HttpServlet {

    private static final Long serialVersionUID = 1L;
    @Inject
    private IUserService userService;

    @Inject
    private ICommonService commonService;

    @Inject
    private IVideoService videoService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("cs", commonService);
        req.setAttribute("vService", videoService);
        req.setAttribute("userservice", userService);

        // m k setseters mà lấy users, nên sai
        //get user , ok ch ok giờ sửa lại mới get dúng video là ok ok, ok edit giao diện cho đẹp tí nha ok
        // t xem boottrap ntn r gán vô cho đồng bộ
        // oke 10đ kk // responsive luôn nha, nếu k rảnh thì k làm cx đc, nói chung mấy phần kia okay rồi, ok
        // out nhá ok cảm ơn nha 10đ
        String id= req.getParameter("id");
        req.setAttribute("user", userService.findOne(parseLong(id)));

        // Get videos
        // cái này là đổ tạm, t viết hàm tìm video by usser, m có usser.getVideos thôi, k cần viết hàm

        List<Video> videos = videoService.findAll();
        req.setAttribute("videos", videos);

// videos với video à nhừng phải để video nó mới lấy dc từng cái, kệ nó, m k để nó cx hiểu, chạy lại đi
        // hiểu rồi, m k setAtriibute là video, mà bên kia m khai báo, là sai, đúng hem pro. set rồi đây
        RequestDispatcher rd = req.getRequestDispatcher("/views/dashboard/channel.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }
}