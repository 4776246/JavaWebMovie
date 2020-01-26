package com.jarod.Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "DLFilter",
        urlPatterns = {"/admin/index.jsp","/admin/interface.jsp","/admin/setting.jsp","/admin/title.jsp","/admin/user.jsp"},
            initParams = {
                @WebInitParam(name="charset",value = "utf-8")
            }
)
public class DLFilter implements Filter {
    String charset;

    public void destroy() {
        System.out.println("过滤器关闭了");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding(charset);
        //转换类型，获取session属性
        HttpServletRequest httpRequest = (HttpServletRequest)req;
        HttpSession session = httpRequest.getSession();
        String name= (String) session.getAttribute("user");


        //重写路径（绝对路径）
//        String path = httpRequest.getContextPath();
//        String basePathindex = req.getScheme()+"://"
//                +req.getServerName()+":"
//                +req.getServerPort()+path+"/"+"admin"+"/";

        //转换类型，实现重定向
        HttpServletResponse hresp= (HttpServletResponse) resp;
        if(name==null || name.equals("")){

            RequestDispatcher rd=req.getRequestDispatcher("login.jsp");
            rd.forward(req, resp);
        }
//        hresp.sendRedirect("index.jsp");//重定向
        chain.doFilter(req, resp);

    }

    public void init(FilterConfig config) throws ServletException {
        charset = config.getInitParameter("charset");

    }

}
