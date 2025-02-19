package com.example.student_management.dto;


import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import lombok.*;


import java.time.LocalDate;


@Getter
@Setter
//@AllArgsConstructor
//@NoArgsConstructor
@RequiredArgsConstructor
@ToString
public class UserDTO {

    private int userId;
//    @NotEmpty
    public String fName;
//    @NotEmpty
    private String lName;
    private String department;
    private LocalDate bod;
    private float fees;
//    @NotEmpty
    private String username;
//    @Email
    private String email;
    private String password;
    private String password2;
    private int role;
    private String status;

}
