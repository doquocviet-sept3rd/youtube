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

@WebServlet(urlPatterns = {"/api-vid-interact"})
public class VidInteractAPI extends HttpServlet {

    @Inject
    IVidInteractService vidInteractService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
        VidInteract vidInteractDB = vidInteractService.findOne(vidInteract.getUserId(), vidInteract.getVideoId());
        if (vidInteractDB != null) {
            vidInteractDB.setIsLike(vidInteract.getIsLike());
        } else {
            vidInteractService.insert(vidInteract);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        VidInteract vidInteract = HttpUtil.of(req.getReader()).toModel(VidInteract.class);
        vidInteractService.delete(vidInteract);
    }
}
