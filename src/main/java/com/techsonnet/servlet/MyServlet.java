package com.techsonnet.servlet;

import javax.servlet.*;
import java.io.IOException;

public class MyServlet implements Servlet {

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {

        System.out.println("接收到客户端请求!");

        String id = servletRequest.getParameter("id");

        //解决乱码问题
        servletResponse.setContentType("text/html;charset=UTF-8");

        servletResponse.getWriter().write("服务器已经接收到请求，请求参数为"+id);

    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {

    }
}
