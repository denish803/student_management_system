package com.example.student_management.serviceImpl;


import com.example.student_management.dto.UserDTO;
import com.example.student_management.entity.UserEntity;
import com.example.student_management.repository.UserLogInRepository;
import com.example.student_management.service.UserLoginService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Log4j2
@Service
public class UserLogInServiceImpl implements UserLoginService {


    @Autowired
    private UserLogInRepository userLogInRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    public String login(UserDTO userDTO, HttpServletRequest request, HttpServletResponse response) {

        Optional<UserEntity> userData = userLogInRepository.findByEmail(userDTO.getEmail());

        if (userData.isPresent()) {
            if (passwordEncoder.matches(userDTO.getPassword(), userData.get().getPassword())) {

                //      set session
                HttpSession session = request.getSession(true);
                session.setAttribute("email", userData.get().getEmail());
                session.setAttribute("role", userData.get().getRole());

                //      set cookies
                Cookie cookie = new Cookie("email", passwordEncoder.encode(userData.get().getEmail()));
                cookie.setPath("/");
                cookie.setHttpOnly(true);
                cookie.setSecure(true);
                cookie.setMaxAge(1000 * 60 * 3);
                response.addCookie(cookie);

                return "USER_EXIST";
            }
            return "PASSWORD_INVALID";
        }
        return "NOT_FOUND_DATA";
    }
}
