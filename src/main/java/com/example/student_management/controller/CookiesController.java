package com.example.student_management.controller;


import com.example.student_management.serviceImpl.CookiesServiceImpl;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@Log4j2
@RestController
@RequestMapping("/cookies")
public class CookiesController {

    @Autowired
    private CookiesServiceImpl cookiesService;

    @GetMapping("/check")
    public ResponseEntity<Map<String, Object>> checkCookies(
            HttpServletResponse response, HttpServletRequest request,
            @CookieValue(defaultValue = "") String email) {
        log.info("URI is : {}", request.getRequestURI());
        log.info("Cookies value : {}", email);
        String cookieValue = cookiesService.checkCookie(response, email);
        Map<String, Object> data = new HashMap<>();
        if (cookieValue.equals("DELETE_COOKIE")) {
            data.put("status", true);
            data.put("message", "Cookie Invalid");
        } else {
            data.put("status", false);
            data.put("message", "Cookie valid");
        }
        return ResponseEntity.status(HttpStatus.OK).body(data);
    }

}
