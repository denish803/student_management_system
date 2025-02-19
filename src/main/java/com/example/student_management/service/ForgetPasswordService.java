package com.example.student_management.service;

import com.example.student_management.dto.UserDTO;

public interface ForgetPasswordService {

    void forgetPassword(UserDTO userDTO);

    String emailVerify(String email);

}
