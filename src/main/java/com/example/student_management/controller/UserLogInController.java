package com.example.student_management.controller;


import com.example.student_management.dto.UserDTO;
import com.example.student_management.serviceImpl.UserLogInServiceImpl;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Log4j2
@RestController
@RequestMapping("/log-in")
public class UserLogInController {

    @Autowired
    private UserLogInServiceImpl userLogInService;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/user")
    public ModelAndView logIn(@RequestParam(required = false) String msg) {

        log.info("work login");
        String message = " ";

        if (msg == null) {
            message = " ";
        } else if (msg.equals("PASSWORD_INVALID")) {
            message = "password does not match";
        } else if (msg.equals("NOT_FOUND_DATA")) {
            message = "email id is not exist";
        }

        log.info("Message {}", message);
        return new ModelAndView("/auth/user_login")
                .addObject("msg", message);
    }

    @PostMapping("/user")
    public ModelAndView logIn(UserDTO userDTO, HttpServletRequest request, HttpServletResponse response) {


        String login = userLogInService.login(userDTO, request, response);

        if (login.equals("PASSWORD_INVALID")) {
            return new ModelAndView("redirect:/log-in/user?msg=" + login);
        }

        if (login.equals("NOT_FOUND_DATA")) {
            return new ModelAndView("redirect:/log-in/user?msg=" + login);
        }

        return new ModelAndView("redirect:/user/jsp/get-list");

    }

}
