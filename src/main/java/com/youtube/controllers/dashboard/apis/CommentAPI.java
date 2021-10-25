package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Comment;
import com.youtube.services.ICommentService;
import com.youtube.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-comment"})
public class CommentAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    ICommentService commentService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Comment comment = HttpUtil.of(req.getReader()).toModel(Comment.class);
        commentService.insert(comment);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Comment comment = HttpUtil.of(req.getReader()).toModel(Comment.class);
        commentService.delete(commentService.findOne(comment.getId()));
    }
}
