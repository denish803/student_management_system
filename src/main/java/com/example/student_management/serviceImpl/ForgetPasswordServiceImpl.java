package com.example.student_management.serviceImpl;

import com.example.student_management.dto.UserDTO;
import com.example.student_management.entity.UserEntity;
import com.example.student_management.repository.ForgetPasswordRepository;
import com.example.student_management.service.ForgetPasswordService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@Log4j2
@Service
public class ForgetPasswordServiceImpl implements ForgetPasswordService {

    @Autowired
    private ForgetPasswordRepository forgetPasswordRepository;

    @Override
    public String emailVerify(String email) {

        Optional<UserEntity> userEntity = forgetPasswordRepository.findByEmail(email);

        if (userEntity.isPresent()) {
            return "VERIFY_EMAIL";
        }

        return "NOT_FOUND";
    }

    @Override
    public void forgetPassword(UserDTO userDTO) {

        if (userDTO.getPassword().equals(userDTO.getPassword2())) {
            Optional<UserEntity> userEntity = forgetPasswordRepository
                    .findByEmail(userDTO.getEmail());

            if (userEntity.isPresent()) {
                UserEntity userEntityData = userEntity.get();

                log.info("Password : {}", userEntityData.getPassword());
                String EmailPasswordUpdateSQL = "UPDATE student s SET s.password= :password WHERE s.email = :email";

                Map<String, Object> param = new HashMap<>();
                param.put("password", userEntityData.getPassword());


//                namedParameterJdbcTemplate.update();

            }

        }
    }



}
