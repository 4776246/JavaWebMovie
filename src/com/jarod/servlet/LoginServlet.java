package com.jarod.servlet;

import com.jarod.dao.Proxy;
import com.jarod.table.Users;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 登陆验证
 *
 */
@WebServlet(name = "Login",urlPatterns = "/admin/Login")
public class LoginServlet extends HttpServlet {
    @Override


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        String login= req.getParameter("Name");
        String pass=req.getParameter("Password");
        List<String> errors=new ArrayList<String>();//鐢ㄤ簬瀛樻斁閿欒淇℃伅
        Proxy dao= null;
        String path = req.getContextPath();
        String basePathindex = req.getScheme()+"://"
                +req.getServerName()+":"
                +req.getServerPort()+path+"/"+"admin"+"/"+"index.jsp";
        String basePathlogin = req.getScheme()+"://"
                +req.getServerName()+":"
                +req.getServerPort()+path+"/"+"admin"+"/"+"login.jsp";
        try {
            dao = new Proxy();
            Users admin=dao.findUser();
            if(admin.getUser_pass().equals(pass) && admin.getUser_login().equals(login))
            {
                String name=admin.getUser_name();
                HttpSession sess=req.getSession();
                sess.setAttribute("user",name);
                String name1= (String) sess.getAttribute("user");
                System.out.println(name1);
                resp.sendRedirect(basePathindex);
//                RequestDispatcher rd=req.getRequestDispatcher(basePath);
//                rd.forward(req, resp);
            }else{
                errors.add("账号或密码错误");
//                req.setAttribute("err",errors);
//                RequestDispatcher rd=req.getRequestDispatcher(basePathlogin);
//                rd.forward(req, resp);
                HttpSession sess=req.getSession();
                sess.setAttribute("err",errors);


                resp.sendRedirect(basePathlogin);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        this.doGet(req,resp);
    }
}
