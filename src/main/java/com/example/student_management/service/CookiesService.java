package com.example.student_management.service;

import jakarta.servlet.http.HttpServletResponse;

public interface CookiesService {

    String checkCookie(HttpServletResponse response,String cookieEmail);

}
