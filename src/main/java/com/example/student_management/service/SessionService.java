package com.example.student_management.service;

import jakarta.servlet.http.HttpServletRequest;

public interface SessionService {

    boolean expirySession(HttpServletRequest request);

}
