package com.youtube.controllers.dashboard.apis;

import com.google.gson.Gson;
import com.youtube.entities.ComInteract;
import com.youtube.services.IComInteractService;
import com.youtube.utils.HttpUtil;

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
    IComInteractService comInteractService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ComInteract comInteract = HttpUtil.of(req.getReader()).toModel(ComInteract.class);
        ComInteract comInteractDB = comInteractService.findOne(comInteract.getUserId(), comInteract.getCommentId());
        if (comInteractDB != null) {
            comInteractDB.setIsLike(comInteract.getIsLike());
        } else {
            comInteractService.insert(comInteract);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ComInteract comInteract = HttpUtil.of(req.getReader()).toModel(ComInteract.class);
        comInteractService.delete(comInteract);
    }
}
