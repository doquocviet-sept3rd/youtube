package com.youtube.controllers.dashboard.apis;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.youtube.entities.User;
import com.youtube.services.IUserService;
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
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        User user = HttpUtil.of(req.getReader()).toModel(User.class);
        Long id = userService.insert(user);
        System.out.print("id: " + id);
        mapper.writeValue(resp.getOutputStream(), user);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    }
}
