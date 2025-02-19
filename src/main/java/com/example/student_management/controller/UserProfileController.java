package com.example.student_management.controller;


import com.example.student_management.serviceImpl.UserServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Log4j2
@RestController
@RequestMapping("/student")
public class UserProfileController {

    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/profile")
    public ModelAndView profile(HttpServletRequest request) {

        HttpSession session = request.getSession();

        log.info("Session in profile {}", session.getAttribute("sessionTime"+request.getRequestURI()));

        return new ModelAndView("student_profile")
                .addObject("studentData", userService.getProfile((String) session.getAttribute("email")));
    }

}
