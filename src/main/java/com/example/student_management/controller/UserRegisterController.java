package com.example.student_management.controller;

import com.example.student_management.dto.UserDTO;
import com.example.student_management.serviceImpl.UserServiceImpl;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Log4j2
@RestController
@RequestMapping("/register")
public class UserRegisterController {

//    private static final org.slf4j.Logger log = LoggerFactory.getLogger(StudentRegisterController.class);

//    private static final Logger log = (Logger) LoggerFactory.getLogger(StudentRegisterController.class);

    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/user")
    public ModelAndView user(@RequestParam(required = false) String msg) {

        String message = " ";

        if (msg == null) {
            message = " ";
        } else if (msg.equals("PASSWORD_NOT_MATCH")) {
            message = "password not match";
        } else if (msg.equals("DUPLICATE_DATA")) {
            message = "email id or username already exist";
        }

        return new ModelAndView("/auth/user_register")
                .addObject("msg", message);
    }

    @PostMapping("/user")
    public ModelAndView user(UserDTO userDTO) {


        log.info("Inside the Student register post method");
        log.info("Student data : {}", userDTO);

        String register = userService.insert(userDTO);

        if (register.equals("PASSWORD_NOT_MATCH")) {
            return new ModelAndView("redirect:/register/user?msg="+register);
        } else if (register.equals("DUPLICATE_DATA")) {
            return new ModelAndView("redirect:/register/user?msg="+register);
        }

        return new ModelAndView("redirect:/log-in/user");
    }

}
