package com.jarod.servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.jarod.dao.Proxy;
import com.jarod.table.Options;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.html.Option;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name="findOptionsServlet",
        urlPatterns = {"/findOptionsServlet","/admin/findOptionsServlet"})
public class FindOptionsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("application/json;charset=utf-8");

        List<Options> optionsList = null;
        try {
            Proxy dao = new Proxy();
            optionsList = dao.findAllOptions();
        } catch (Exception e) {
            e.printStackTrace();
        }

        Map<String,String> map = new HashMap<>();

        for(Options i:optionsList){
            map.put(i.getOption_name(),i.getOpthon_value());
        }



        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),map);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
