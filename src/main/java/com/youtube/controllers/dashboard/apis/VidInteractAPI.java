package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.User;
import com.youtube.entities.VidInteract;
import com.youtube.services.IVidInteractService;
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

@WebServlet(urlPatterns = {"/api-vid-interact"})
public class VidInteractAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    private IVidInteractService vidInteractService;

    @Inject
    private PrintWriterUtil printWriterUtil;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        printWriterUtil.getInstance(resp);
        try {
            VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            vidInteract.setUserId(userCurrent.getId());
            vidInteractService.insert(vidInteract);
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
            VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
            User userCurrent = (User) ApplicationUtil.getInstance().getValue(req, "user");
            VidInteract vidInteractDB = vidInteractService.findOne(userCurrent.getId(), vidInteract.getVideoId());
            vidInteractDB.setIsLike(vidInteract.getIsLike());
            vidInteractService.update(vidInteractDB);
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
            vidInteractService.delete(vidInteractService.findOne(userCurrent.getId(), id));
            printWriterUtil.println(true);
        } catch (Exception e) {
            printWriterUtil.println(false);
        }
    }
}
