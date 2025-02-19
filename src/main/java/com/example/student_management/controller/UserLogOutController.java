package com.example.student_management.controller;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/log-out")
public class UserLogOutController {

    @GetMapping("/user")
    public ModelAndView logOut(HttpSession session, HttpServletResponse response) {

        Cookie cookie = new Cookie("email", null);
        cookie.setSecure(false);
        cookie.setHttpOnly(false);
        cookie.setMaxAge(0);
        response.addCookie(cookie);

        session.invalidate();

        return new ModelAndView("redirect:/log-in/user");

    }

}
