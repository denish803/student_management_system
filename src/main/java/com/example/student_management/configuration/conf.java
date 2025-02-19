package com.example.student_management.configuration;

import com.example.student_management.serviceImpl.SessionServiceImpl;
import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class conf {

    @Bean
    public ModelMapper modelMapper() {
        return new ModelMapper();
    }

    @Bean
    public SessionServiceImpl autoLogOutService() {
        return new SessionServiceImpl();
    }

}
