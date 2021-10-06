package com.youtube.controllers.dashboard.watch;

import com.youtube.entities.Video;
import com.youtube.services.*;
import com.youtube.services.impls.VideoService;

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
    private IVideoService videoService;

    @Inject
    private IUserService userService;

    @Inject
    private ICommentService commentService;

    @Inject
    private ISubscribeService subscribeService;

    @Inject
    private IVidInteractService vidInteractService;

    @Inject
    private IComInteractService comInteractService;


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // do get
        videoService = new VideoService();
        String id = request.getParameter("v");
        Video video = videoService.findOne((Long.parseLong(id)));
        request.setAttribute("video", video);
        System.out.println(video);
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
