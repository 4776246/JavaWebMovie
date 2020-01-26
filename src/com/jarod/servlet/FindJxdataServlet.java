package com.jarod.servlet;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.jarod.dao.Proxy;
import com.jarod.table.Jxdata;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name="findJxdataServlet",
        urlPatterns = {"/findJxdataServlet","/admin/findJxdataServlet"})
public class FindJxdataServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("application/json;charset=utf-8");

        List<Jxdata> jxdataList = new ArrayList<Jxdata>();
        try {
            Proxy dao = new Proxy();
            jxdataList = dao.findAllJxdata();
        } catch (Exception e) {
            e.printStackTrace();
        }

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),jxdataList);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
