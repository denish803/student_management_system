package com.example.student_management.Interceptor;


import com.example.student_management.controller.LogIn;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;


@Log4j2
@Component
public class Interceptor extends InterceptorRegister implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        if (!(handler instanceof HandlerMethod)) {
            return true;
        }

        if (request.getRequestURI().startsWith("/attendance") ||
            request.getRequestURI().startsWith("/register")) {
            if (request.getSession().getAttribute("role").equals(3)){
                response.sendRedirect("/user/jsp/get-list?msg=NOT_AUTHORISE");
                return false;
            }
            if (request.getRequestURI().startsWith("/register")) {
                if (request.getSession().getAttribute("role").equals(2)) {
                    response.sendRedirect("/user/jsp/get-list?msg=NOT_AUTHORISE");
                    return false;
                }
            }
            return true;

        }

        if (request.getRequestURI().equals("/register/user") ||
                request.getRequestURI().equals("/log-in/user")) {
            return true;
        }

        if (!request.getRequestURI().equals("/register/user") &&
                !request.getRequestURI().equals("/log-in/user")) {
            boolean logIn = LogIn.isLogIn(request);
            if (logIn) {
                return true;
            }

        }

        log.info("User Not log-in");

        response.sendRedirect("/log-in/user");
        return false;
    }

}
