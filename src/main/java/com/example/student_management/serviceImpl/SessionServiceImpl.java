package com.example.student_management.serviceImpl;

import com.example.student_management.service.SessionService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.log4j.Log4j2;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

@Log4j2
public class SessionServiceImpl implements SessionService {


    @Override
    public boolean expirySession(HttpServletRequest request) {

        HttpSession session = request.getSession();

        log.info("Session Time Out : {}", session.getAttribute("sessionTime"));

        Date date = new Date();
        Calendar calendar = GregorianCalendar.getInstance();
        calendar.setTime(date);

        int hour = calendar.get(Calendar.HOUR);
        int minute = calendar.get(Calendar.MINUTE);
        String sessionTime = Integer.toString(hour) + ":" + Integer.toString(minute);

        log.info("Check log out condiontion : {}",sessionTime.equals(session.getAttribute("sessionTime")));
        log.info("From URI : {}",request.getRequestURI());
        log.info("set log out time : {}",session.getAttribute("sessionTime"));
        log.info("current time : {}",sessionTime);

        if (sessionTime.equals(session.getAttribute("sessionTime"))) {
            log.info("Session is invalid");
            session.invalidate();
            return true;
        }
        return false;
    }
}
