package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Comment;
import com.youtube.entities.User;
import com.youtube.entities.Video;
import com.youtube.services.ICommentService;
import com.youtube.utils.ApplicationUtil;
import com.youtube.utils.HttpUtil;
import com.youtube.utils.PrintWriterUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.Instant;

@WebServlet(urlPatterns = {"/api-comment"})
public class CommentAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    private ICommentService commentService;

    @Inject
    private PrintWriterUtil printWriterUtil;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        if (req.getParameter("src").equals("crud")) {
            try {
                Comment comment = HttpUtil.of(req.getReader()).toModel(Comment.class);
                comment.setTime(Timestamp.from(Instant.now()));
                User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
                comment.setUserId(userCurrent.getId());
                Long id = commentService.insert(comment);
                printWriterUtil.println(id);
            } catch (Exception e) {
                printWriterUtil.println(false);
            }
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        if (req.getParameter("src").equals("interaction")) {
            try {
                Comment comment = commentService.findOne(Long.parseLong(req.getParameter("id")));
                String action = req.getParameter("action");
                boolean isLike = Boolean.parseBoolean(req.getParameter("isLike"));
                switch (action) {
                    case "delete":
                        if (isLike) {
                            comment.setLikes(comment.getLikes() - 1);
                        } else {
                            comment.setDislikes(comment.getDislikes() - 1);
                        }
                        break;
                    case "add":
                        if (isLike) {
                            comment.setLikes(comment.getLikes() + 1);
                        } else {
                            comment.setDislikes(comment.getDislikes() + 1);
                        }
                        break;
                    case "update":
                        if (isLike) {
                            comment.setLikes(comment.getLikes() + 1);
                            comment.setDislikes(comment.getDislikes() - 1);
                        } else {
                            comment.setDislikes(comment.getDislikes() + 1);
                            comment.setLikes(comment.getLikes() - 1);
                        }
                        break;
                }
                commentService.update(comment);
                printWriterUtil.println(true);
            } catch (Exception e) {
                printWriterUtil.println(false);
            }
        }
        if (req.getParameter("src").equals("crud")) {
            try {
                Comment comment = HttpUtil.of(req.getReader()).toModel(Comment.class);
                comment.setTime(Timestamp.from(Instant.now()));
                User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
                comment.setUserId(userCurrent.getId());
                Long id = commentService.insert(comment);
                printWriterUtil.println(id);
            } catch (Exception e) {
                printWriterUtil.println(false);
            }
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        if (req.getParameter("src").equals("crud")) {
            try {
                Long id = Long.valueOf(req.getParameter("id"));
                Comment comment = commentService.findOne(id);
                User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
                if (comment.getUserId() == userCurrent.getId()) {
                    commentService.delete(comment);
                    printWriterUtil.println(true);
                } else {
                    printWriterUtil.println(false);
                }
            } catch (Exception e) {
                printWriterUtil.println(false);
            }
        }
    }
}
