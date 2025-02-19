package com.example.student_management.serviceImpl;


import com.example.student_management.service.CookiesService;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;


@Log4j2
@Service
public class CookiesServiceImpl implements CookiesService {

    @Override
    public String checkCookie(HttpServletResponse response, String CookieEmail) {

        if (CookieEmail == null || CookieEmail.isEmpty()) {

            Cookie cookie = new Cookie("cookieTimeOut", null);
            cookie.setSecure(false);
            cookie.setHttpOnly(false);
            cookie.setMaxAge(0);
            response.addCookie(cookie);

            log.info("Cookies expiry");

            return "DELETE_COOKIE";
        }
        return "IS_COOKIE";
    }
}
