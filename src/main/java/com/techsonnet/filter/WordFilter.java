package com.techsonnet.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/word")
public class WordFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String name = (String) servletRequest.getParameter("name");
        name = name.replaceAll("敏感词", "***");
        servletRequest.setAttribute("name",name);
        filterChain.doFilter(servletRequest,servletResponse);
    }
}
