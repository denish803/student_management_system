package com.example.student_management.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.log4j.Log4j2;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Log4j2
public class LogIn {

    public static boolean isLogIn(HttpServletRequest request) {

        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        Object email = request.getSession().getAttribute("email");
        if (email == null) {
            return false;
        }
        log.info("Session Url : {}", request.getRequestURL());
        log.info("Email in Session : {}", email);
        Cookie[] cookies = request.getCookies();
        log.info("cookie and session match {}", passwordEncoder.matches((CharSequence) request.getSession()
                .getAttribute("email"), "admin@gmail.com"));
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ((cookie.getName().equals("email"))) {
                    log.info("cookies is valid");
                    return true;
                }
            }
        }
        log.info("cookies is invalid");
        return false;
    }

}
