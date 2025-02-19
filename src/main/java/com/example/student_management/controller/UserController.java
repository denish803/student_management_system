package com.example.student_management.controller;


import com.example.student_management.dto.UserDTO;
import com.example.student_management.serviceImpl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Log4j2
@Controller
@RequestMapping("/user/jsp")
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/get-list")
    public ModelAndView getListJsp(@RequestParam(required = false) String search, @RequestParam(required = false) String msg,
                             Model model) throws ServletException, IOException {

        String message = " ";

        if (msg == null) {
            message = " ";
        } else if (msg.equals("NOT_AUTHORISE")) {
            message = "Not Able To Use";
        }

        log.info("user data Using JSP : {}", userService.getList());

        List<UserDTO> userData = new ArrayList<>();

        if (search != null) {
            userData = userService.getUserData(search);
        } else {
            userData = userService.getList();
        }

        log.info("user Data : {}", userData);

        return new ModelAndView("/admin/user_view")
                .addObject("userData", userData)
                .addObject("msg", message);

    }


    @GetMapping("/insert")
    public ModelAndView insert(@RequestParam(required = false) String msg, Model model) throws IOException, ServletException {

        String message = " ";

        if (msg == null) {
            message = " ";
        } else if (msg.equals("DUPLICATE_DATA")) {
            message = "Email or Username is exist";
        } else if (msg.equals("PASSWORD_NOT_MATCH")) {
            message = "Password is not match";
        }

        model.addAttribute("msg", message);
        return new ModelAndView("/admin/user_insert");
    }


    @PostMapping("/insert")
    public ModelAndView insert(@Validated UserDTO userDTO) {

        log.info("insert data in jsp");

        String insertData = userService.insert(userDTO);

        if (insertData.equals("DUPLICATE_DATA")) {
            return new ModelAndView("redirect:/user/jsp/insert?msg="+insertData);
        } else if (insertData.equals("PASSWORD_NOT_MATCH")) {
            return new ModelAndView("redirect:/user/jsp/insert?msg="+insertData);
        }

        return new ModelAndView("redirect:/user/jsp/get-list");
    }


    @GetMapping("/update/id={id}")
    public String update(@PathVariable int id, @RequestParam(required = false) String msg, Model model) {

        String message = " ";

        if (msg == null) {
            message = " ";
        } else if (msg.equals("INVALID_DATA")) {
            message = "invalid data";
        }else if (msg.equals("DUPLICATE_DATA")) {
            message = "username or email is exist";
        }

        model.addAttribute("userData", userService.get(id));
                model.addAttribute("msg", message);

        return "/admin/user_update";

    }

    @PostMapping("/update")
    public ModelAndView update(@Validated UserDTO userDTO) {
        String data = userService.update(userDTO);

        if (data.equals("INVALID_DATA")) {
            return new ModelAndView("redirect:/user/jsp/update/id="+ userDTO.getUserId() +"?msg="+data);
        } else if (data.equals("DUPLICATE_DATA")) {
            return new ModelAndView("redirect:/user/jsp/update/id="+ userDTO.getUserId() +"?msg="+data);
        }
        return new ModelAndView("redirect:/user/jsp/get-list");
    }

    @PostMapping("/update-status")
    public ModelAndView update(@RequestParam int id) {

        userService.statusUpdate(id);

        return new ModelAndView("redirect:/user/jsp/get-list");
    }


    @PostMapping("/delete/id={id}")
    public ModelAndView delete(@PathVariable int id) {
        userService.delete(id);
        return new ModelAndView("redirect:/user/jsp/get-list");
    }

}
