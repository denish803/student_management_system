package com.example.student_management;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
@EnableCaching
public class StudentManagementApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(StudentManagementApplication.class, args);
    }

}
