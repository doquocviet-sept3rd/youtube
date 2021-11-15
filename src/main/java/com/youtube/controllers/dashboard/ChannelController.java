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


        String id= req.getParameter("id");
        req.setAttribute("user", userService.findOne(parseLong(id)));

        // Get videos

        List<Video> videos = videoService.findByUser(parseLong(id));
        req.setAttribute("videos", videos);


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