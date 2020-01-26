package com.jarod.servlet;

import com.jarod.dao.Proxy;
import com.jarod.table.Jxdata;
import com.jarod.table.Titles;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "updateTitleServlet",
        urlPatterns = {"/updateTitleServlet","/admin/updateTitleServlet"})
public class UpdateTitleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("content-type", "text/html;charset=utf-8");
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
//        resp.setContentType("application/json;charset=utf-8");
        List<Titles> titles=new ArrayList<Titles>();
        System.out.println(req.getParameter("title_"+1));
        int i=0;

        try {
            for (int x=1;x<=4;x++){
                Titles T1=new Titles();
                T1.setId(x);
                T1.setTitle_name(req.getParameter("title_"+x));
                T1.setTitle_url(req.getParameter("url_"+x));
                titles.add(T1);
            }
            Proxy dao = new Proxy();
            i = dao.updateTitles(titles);
            RequestDispatcher rd=req.getRequestDispatcher("title.jsp");
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
