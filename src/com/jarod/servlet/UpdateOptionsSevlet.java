package com.jarod.servlet;

import com.jarod.dao.Proxy;
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

@WebServlet(name = "updateOptionsServlet",
        urlPatterns = {"/updateOptionsSevlet","/admin/updateOptionsSevlet"})
public class UpdateOptionsSevlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        List<Options> optionsList = new ArrayList<Options>();
        int i=0;
        Options options1 = new Options();
        options1.setOption_id(1);
        options1.setOpthon_value(req.getParameter("sitename"));
        optionsList.add(options1);
        Options options2 = new Options();
        options2.setOption_id(2);
        options2.setOpthon_value(req.getParameter("siteurl"));
        optionsList.add(options2);
        Options options3 = new Options();
        options3.setOption_id(3);
        options3.setOpthon_value(req.getParameter("describe"));
        optionsList.add(options3);
        Options options4 = new Options();
        options4.setOption_id(4);
        options4.setOpthon_value(req.getParameter("keyword"));
        optionsList.add(options4);
        Options options5 = new Options();
        options5.setOption_id(5);
        options5.setOpthon_value(req.getParameter("copyright"));
        optionsList.add(options5);
        Options options6 = new Options();
        options6.setOption_id(6);
        options6.setOpthon_value(req.getParameter("icp"));
        optionsList.add(options6);
        Options options7 = new Options();
        options7.setOption_id(7);
        options7.setOpthon_value(req.getParameter("cnzz"));
        optionsList.add(options7);
        try {
            Proxy dao = new Proxy();
            i = dao.updateOptions(optionsList);
            RequestDispatcher rd=req.getRequestDispatcher("setting.jsp");
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
