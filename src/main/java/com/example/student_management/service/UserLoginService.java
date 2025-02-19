package com.example.student_management.service;

import com.example.student_management.dto.UserDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface UserLoginService {

    String login(UserDTO studentDTO, HttpServletRequest request, HttpServletResponse response);

}
