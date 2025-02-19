package com.example.student_management.dto;


import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;


@Getter
@Setter
@RequiredArgsConstructor
@ToString
public class UserDTO {

    private int userId;
    public String fName;
    private String lName;
    private String department;
    private LocalDate bod;
    private float fees;
    private String username;
    private String email;
    private String password;
    private String password2;
    private int role;
    private String status;

}
