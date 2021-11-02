package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.ComInteract;
import com.youtube.entities.User;
import com.youtube.services.IComInteractService;
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

@WebServlet(urlPatterns = {"/api-com-interact"})
public class ComInteractAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    private IComInteractService comInteractService;

    @Inject
    private PrintWriterUtil printWriterUtil;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        try {
            ComInteract comInteract = HttpUtil.of(req.getReader()).toModel(ComInteract.class);
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            comInteract.setUserId(userCurrent.getId());
            comInteractService.insert(comInteract);
            printWriterUtil.println(true);
        } catch (Exception e) {
            printWriterUtil.println(false);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        try {
            ComInteract comInteract = HttpUtil.of(req.getReader()).toModel(ComInteract.class);
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            ComInteract comInteractDB = comInteractService.findOne(userCurrent.getId(), comInteract.getCommentId());
            comInteractDB.setIsLike(comInteract.getIsLike());
            comInteractService.update(comInteractDB);
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
            Long id = Long.parseLong(req.getParameter("id"));
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            comInteractService.delete(comInteractService.findOne(userCurrent.getId(), id));
            printWriterUtil.println(true);
        } catch (Exception e) {
            printWriterUtil.println(false);
        }
    }
}
