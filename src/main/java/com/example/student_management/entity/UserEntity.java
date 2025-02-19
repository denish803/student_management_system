package com.example.student_management.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "user")
@Data
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;
    private String fName;
    private String lName;
    private String department;
    private LocalDate bod;
    private float fees;
    private String username;
    private String email;
//    @Convert(converter = AesConf.class)
    private String password;
    private int role;
    private String status;

}
