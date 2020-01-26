package com.jarod.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 销毁session
 */
@WebServlet(name = "logout",urlPatterns = "/admin/logout")
public class destroyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        this.doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        System.out.println("aa");
        HttpSession sess=req.getSession();
        if(sess.getAttribute("user")!=null)
        {
            sess.removeAttribute("err");
            sess.setAttribute("user",null);
        }
        RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
                rd.forward(req, resp);
    }
}
