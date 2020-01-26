package com.jarod.servlet;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.jarod.dao.Proxy;
import com.jarod.table.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "findUsersServlet",
    urlPatterns = {"/findUsersServlet","/admin/findUsersServlet"})
public class FindUsersServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("application/json;charset=utf-8");
        Users user = new Users();
        try {
            Proxy dao = new Proxy();
            user = dao.findUser();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Map<String,Object> map = new HashMap<>();
        map.put("id",user.getId());
        map.put("user_login",user.getUser_login());
        map.put("user_pass",user.getUser_pass());
        map.put("user_name",user.getUser_name());
        map.put("user_qq",user.getUser_qq());
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),map);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
