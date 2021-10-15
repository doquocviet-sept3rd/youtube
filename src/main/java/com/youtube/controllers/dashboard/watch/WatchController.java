package com.youtube.controllers.dashboard.watch;

import com.youtube.services.*;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/watch"})
public class WatchController extends HttpServlet {

    @Inject
    ICommonService commonService;

    @Inject
    IVideoService videoService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("cs", commonService);

        // get video
        String id = req.getParameter("v");
        req.setAttribute("video", videoService.findOne(Long.parseLong(id)));

        // get videos
        req.setAttribute("videos", videoService.findAll());

        // get user
        if (req.getParameter("user") != null) {
            req.setAttribute("user", req.getParameter("user"));
        }

        RequestDispatcher rd = req.getRequestDispatcher("/views/dashboard/watch.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
