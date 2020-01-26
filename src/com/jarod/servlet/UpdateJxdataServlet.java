package com.jarod.servlet;

import com.jarod.dao.Proxy;
import com.jarod.table.Jxdata;
import com.jarod.table.Options;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "updateJxdataServlet",
        urlPatterns = {"/updateJxdataServlet","/admin/updateJxdataServlet"})
public class UpdateJxdataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        List<Jxdata> jxdata=new ArrayList<Jxdata>();
        int i=0;

            try {
            for (int x=1;x<=5;x++){
                Jxdata d1=new Jxdata();
                d1.setId(x);
                System.out.println(req.getParameter("jx_"+x));
                d1.setJx_value(req.getParameter("jx_"+x));
                jxdata.add(d1);
            }
            Proxy dao = new Proxy();
            i = dao.updateJxdata(jxdata);
            RequestDispatcher rd=req.getRequestDispatcher("interface.jsp");
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
