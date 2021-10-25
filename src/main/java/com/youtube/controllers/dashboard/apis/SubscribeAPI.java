package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Subscribe;
import com.youtube.entities.User;
import com.youtube.services.ISubscribeService;
import com.youtube.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-subscribe"})
public class SubscribeAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    ISubscribeService subscribeService;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Subscribe subscribe = HttpUtil.of(req.getReader()).toModel(Subscribe.class);
        subscribeService.insert(subscribe);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        Subscribe subscribe = HttpUtil.of(req.getReader()).toModel(Subscribe.class);
        subscribeService.delete(subscribeService.findOne(subscribe.getUserId(), subscribe.getUserIdSub()));
    }
}
