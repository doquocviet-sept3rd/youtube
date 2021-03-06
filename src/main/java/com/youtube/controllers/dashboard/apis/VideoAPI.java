package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Video;
import com.youtube.services.IVideoService;
import com.youtube.utils.PrintWriterUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Objects;

@WebServlet(urlPatterns = {"/api-video"})
public class VideoAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    private IVideoService videoService;

    @Inject
    private PrintWriterUtil printWriterUtil;

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        if (Objects.equals(req.getParameter("src"), "interaction")) {
            try {
                Video video = videoService.findOne(Long.parseLong(req.getParameter("id")));
                String action = req.getParameter("action");
                boolean isLike = Boolean.parseBoolean(req.getParameter("isLike"));
                switch (action) {
                    case "delete":
                        if (isLike) {
                            video.setLikes(video.getLikes() - 1);
                        } else {
                            video.setDislikes(video.getDislikes() - 1);
                        }
                        break;
                    case "add":
                        if (isLike) {
                            video.setLikes(video.getLikes() + 1);
                        } else {
                            video.setDislikes(video.getDislikes() + 1);
                        }
                        break;
                    case "update":
                        if (isLike) {
                            video.setLikes(video.getLikes() + 1);
                            video.setDislikes(video.getDislikes() - 1);
                        } else {
                            video.setDislikes(video.getDislikes() + 1);
                            video.setLikes(video.getLikes() - 1);
                        }
                        break;
                }
                videoService.update(video);
                printWriterUtil.println(true);
            } catch (Exception e) {
                printWriterUtil.println(false);
            }
        }
    }
}
