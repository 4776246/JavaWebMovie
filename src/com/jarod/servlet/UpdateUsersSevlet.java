package com.jarod.servlet;

import com.jarod.dao.Proxy;
import com.jarod.table.Options;
import com.jarod.table.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UpdateUsersSevlet",
        urlPatterns = {"/updateUsersSevlet","/admin/updateUsersSevlet"})
public class UpdateUsersSevlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        int i=0;
        try {
            Users u1=new Users();
            u1.setId(1);
            u1.setUser_login(req.getParameter("user"));
            u1.setUser_name(req.getParameter("name"));
            u1.setUser_pass(req.getParameter("pass"));
            u1.setUser_qq(req.getParameter("qq"));
            Proxy dao = new Proxy();
            i = dao.updateUser(u1);
            RequestDispatcher rd=req.getRequestDispatcher("user.jsp");
            rd.forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
