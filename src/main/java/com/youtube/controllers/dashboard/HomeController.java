package com.youtube.controllers.dashboard;

import com.youtube.entities.Video;
import com.youtube.services.ICommonService;
import com.youtube.services.IVideoService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

@WebServlet(urlPatterns = {"/home", "/search"})
public class HomeController extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    private IVideoService videoService;

    @Inject
    private ICommonService commonService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getServletPath().equals("/home")) {
            Collection<Video> videos = videoService.findAll();
            Collections.shuffle((List<?>) videos);
            req.setAttribute("videos", videos);
        } else {
            String key = req.getParameter("key");
            req.setAttribute("videos", videoService.findAllByKey(key));
        }
        req.setAttribute("cs", commonService);
        RequestDispatcher rd = req.getRequestDispatcher("/views/dashboard/home.jsp");
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
