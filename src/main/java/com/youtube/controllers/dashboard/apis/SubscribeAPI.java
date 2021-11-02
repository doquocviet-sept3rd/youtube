package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.Subscribe;
import com.youtube.entities.User;
import com.youtube.services.ISubscribeService;
import com.youtube.utils.ApplicationUtil;
import com.youtube.utils.PrintWriterUtil;

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
    private ISubscribeService subscribeService;

    @Inject
    private PrintWriterUtil printWriterUtil;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        try {
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            Subscribe subscribe = new Subscribe(Long.parseLong(req.getParameter("userId")), userCurrent.getId());
            subscribeService.insert(subscribe);
            printWriterUtil.println(true);
        } catch (Exception e) {
            printWriterUtil.println(false);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        try {
            long userId = Long.parseLong(req.getParameter("userId"));
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            subscribeService.delete(subscribeService.findOne(userId, userCurrent.getId()));
            printWriterUtil.println(true);
        } catch (Exception e) {
            printWriterUtil.println(false);
        }
    }
}
