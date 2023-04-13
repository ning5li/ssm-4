package com.ning.intercepter;

import com.ning.bean.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginIntercepter extends HandlerInterceptorAdapter {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,Object Handler) throws Exception {

        User user = (User)request.getSession().getAttribute("user");
        String url=request.getRequestURI();
        if(user!=null){
            return true;
        }
        request.setAttribute("msg","您还未登录，请先登录！");
        request.getRequestDispatcher("/login").forward(request,response);
        return false;

    }
}
