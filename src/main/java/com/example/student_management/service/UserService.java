package com.example.student_management.service;

import com.example.student_management.dto.UserDTO;

import java.util.List;

public interface UserService {

    List<UserDTO> getList();

    UserDTO get(int id);

    String insert(UserDTO UserDTO);

    String update(UserDTO UserDTO);

    String delete(int id);

    UserDTO getProfile(String email);

    List<UserDTO> getUserData(String email);

    String statusUpdate(int id);

}
