package com.youtube.controllers.dashboard.watch;

import com.youtube.services.*;
import com.youtube.services.impls.CommonService;
import com.youtube.services.impls.VideoService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/watch"})
public class WatchController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // do get
        IVideoService videoService = new VideoService();
        request.setAttribute("commonService", new CommonService());

        // get video id
        String id = request.getParameter("v");
        request.setAttribute("video", videoService.findOne(Long.parseLong(id)));

        request.setAttribute("videos", videoService.findAll());

//        request.setAttribute("comments", null);


        RequestDispatcher rd = request.getRequestDispatcher("/views/dashboard/watch.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // do post
    }

    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // do put
    }

    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // do delete
    }
}
