package com.youtube.controllers.dashboard.apis;

import com.youtube.entities.User;
import com.youtube.services.IUserService;
import com.youtube.utils.ApplicationUtil;
import com.youtube.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/api-user"})
public class UserAPI extends HttpServlet {

    @Inject
    private IUserService userService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        User user = HttpUtil.of(req.getReader()).toModel(User.class);
        Long id;
        if (userService.isExistEmail(user.getEmail())) {
            id = userService.findOneByEmail(user.getEmail()).getId();
        } else {
            id = userService.insert(user);
        }
        ApplicationUtil.getInstance().putValue(req, "user", userService.findOne(id));
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ApplicationUtil.getInstance().removeValue(req, "user");
        System.out.println(ApplicationUtil.getInstance().getValue(req, "user"));
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
