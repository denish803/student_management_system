package com.example.student_management.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/note")
public class NoteController {

    @GetMapping
    public ModelAndView note() {
        return new ModelAndView("note");
    }

}
