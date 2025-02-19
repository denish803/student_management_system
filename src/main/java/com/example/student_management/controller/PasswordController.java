//package com.example.student_management.controller;
//
//
//import com.example.student_management.dto.UserDTO;
//import com.example.student_management.serviceImpl.ForgetPasswordServiceImpl;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.ModelAndView;
//
//@RestController
//@RequestMapping("/verify")
//public class PasswordController {
//
//    @Autowired
//    private ForgetPasswordServiceImpl forgetPasswordService;
//
//
//    @GetMapping("/email")
//    public ModelAndView email(@RequestParam(required = false) String msg) {
//
//        String message = " ";
//
//        if (msg == null) {
//            message = " ";
//        } else if (msg.equals("NOT_FOUNT")) {
//            message = "invalid email id";
//        }
//
//        return new ModelAndView("verify_email")
//                .addObject("mes", message);
//    }
//
//    @PostMapping("/email")
//    public ModelAndView emailVerify(@RequestParam String email) {
//        String emailVerify = forgetPasswordService.emailVerify(email);
//
//        if (emailVerify.equals("NOT_FOUND")) {
//            return new ModelAndView("redirect:/verify/email");
//        }
//
//        return  new ModelAndView("redirect:/verify/forget-password?email="+email);
//    }
//
//    @GetMapping("/forget-password")
//    public ModelAndView forgetPassword(@RequestParam(required = false) String msg, @RequestParam String email) {
//
//        String message = " ";
//
//        if (msg == null) {
//            message = " ";
//        } else if (msg.equals("INVALID_PASSWORD")) {
//            message = "Password does not match";
//        }
//
//        return new ModelAndView("forget_password")
//                .addObject("msg", message)
//                .addObject("email", email);
//    }
//
//
//    @PostMapping("/forget-password")
//    public ModelAndView forgetPassword(UserDTO studentDTO) {
//
//        forgetPasswordService.forgetPassword(studentDTO);
//
//        return null;
//    }
//
//
//}
