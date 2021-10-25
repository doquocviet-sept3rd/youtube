package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.VidInteract;
import com.youtube.services.IVidInteractService;
import com.youtube.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/api-vid-interact"})
public class VidInteractAPI extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Inject
    IVidInteractService vidInteractService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
        vidInteractService.insert(vidInteract);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
        VidInteract vidInteractDB = vidInteractService.findOne(vidInteract.getUserId(), vidInteract.getVideoId());
        vidInteractDB.setIsLike(vidInteract.getIsLike());
        vidInteractService.update(vidInteractDB);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
        vidInteractService.delete(vidInteract);
        PrintWriter out = resp.getWriter();
        out.println(true);
        out.flush();
    }
}
