package com.jarod.servlet;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.jarod.dao.Proxy;
import com.jarod.table.Titles;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "findTitleServlet",
        urlPatterns = {"/findTitleServlet","/admin/findTitleServlet"})
public class FindTitleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("application/json;charset=utf-8");

        List<Titles> titlesList = null;
        try {
            Proxy dao = new Proxy();
            titlesList = dao.findAllTitles();
        } catch (Exception e) {
            e.printStackTrace();
        }
//        Map<String,Object> map = new HashMap<>();
//        for (Titles i : titlesList){
//            map.put("title_name",i.getTitle_name());
//            map.put("")
//        }
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),titlesList);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
