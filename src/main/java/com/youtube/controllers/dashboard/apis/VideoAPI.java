package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Video;
import com.youtube.services.IVideoService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-video"})
public class VideoAPI extends HttpServlet {

    @Inject
    IVideoService videoService;

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Video video = videoService.findOne(Long.parseLong(req.getParameter("VideoId")));
        String action = req.getParameter("action");
        boolean isLike = Boolean.parseBoolean(req.getParameter("isLike"));
        switch (action) {
            case "delete":
                if (isLike) {
                    video.setLikes(video.getLikes() - 1);
                } else {
                    video.setDislikes(video.getDislikes() - 1);
                }
                System.out.println("delete");
                break;
            case "add":
                if (isLike) {
                    video.setLikes(video.getLikes() + 1);
                } else {
                    video.setDislikes(video.getDislikes() + 1);
                }
                System.out.println("add");
                break;
            case "update":
                if (isLike) {
                    video.setLikes(video.getLikes() + 1);
                    video.setDislikes(video.getDislikes() - 1);
                } else {
                    video.setDislikes(video.getDislikes() + 1);
                    video.setLikes(video.getLikes() - 1);
                }
                System.out.println("update");
                break;
        }
        System.out.println("key");
        videoService.update(video);
    }
}
