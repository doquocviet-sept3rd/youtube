package com.youtube.controllers.dashboard;

import com.youtube.daos.impls.VideoDAO;
import com.youtube.entities.Video;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/search"})
public class SearchController extends HttpServlet {

    private static final Long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        req.setCharacterEncoding("utf-8");
        String txtSearch=req.getParameter("txt");
        VideoDAO videoDAO=new VideoDAO();
        List<Video> list=videoDAO.searchByName(txtSearch);

        req.setAttribute("listVideo",list);
        req.setAttribute("txtSearch",txtSearch);
        RequestDispatcher rd = req.getRequestDispatcher("/views/dashboard/home.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp);
    }
}
