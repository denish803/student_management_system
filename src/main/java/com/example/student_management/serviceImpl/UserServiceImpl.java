package com.example.student_management.serviceImpl;

import com.example.student_management.dto.UserDTO;
import com.example.student_management.entity.UserEntity;
import com.example.student_management.repository.UserRepository;
import com.example.student_management.service.UserService;
import lombok.extern.log4j.Log4j2;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;


@Log4j2
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    @Cacheable(value = "userData")
    public List<UserDTO> getList() {

        List<UserEntity> userEntity = userRepository.findAll();

        log.info("user data : {}", userEntity);

        log.info("user data =  : {}", userEntity);

        return userEntity.stream()
                .map(userEntityData -> modelMapper.map(userEntityData, UserDTO.class))
                .toList();
    }

    @Override
    @Cacheable(value = "userData")
    public UserDTO get(int id) {
        Optional<UserEntity> userEntity = userRepository.findById((long) id);

        if (userEntity.isPresent()) {
            UserEntity userEntityData = userEntity.get();
            return modelMapper.map(userEntityData, UserDTO.class);
        }
        return null;
    }

    @Override
    @CachePut(value = "userData")
    @CacheEvict(value = "userData", allEntries = true)
    public String insert(UserDTO userDTO) {

        Optional<UserEntity> userEntity = userRepository.getByEmailOrUsername(userDTO.getEmail(), userDTO.getUsername());

        if (userEntity.isPresent()) {
            return "DUPLICATE_DATA";
        }

        if (!userDTO.getPassword().equals(userDTO.getPassword2())) {
            return "PASSWORD_NOT_MATCH";
        }

        log.info("Inside the insert method");
        userDTO.setPassword(passwordEncoder.encode(userDTO.getPassword()));
        UserEntity map = modelMapper.map(userDTO, UserEntity.class);

        log.info("user Password : {}", map.getPassword());
        log.info("List Register : {}", map);

        userRepository.save(map);

        log.info("Insert user Record");

        return "INSERT_DATA";
    }

    @Override
    @CachePut(value = "userData")
    @CacheEvict(value = "userData", allEntries = true)
    public String update(UserDTO userDTO) {
        String sql = "SELECT COUNT(u.email) cutEmail, COUNT(u.username) cutUsername FROM user u " +
                "WHERE u.email = :email OR u.username = :username";

        Map<String, Object> param = new HashMap<>();
        param.put("username", userDTO.getUsername());
        param.put("email", userDTO.getEmail());

        Map<String, Object> userData = namedParameterJdbcTemplate.queryForMap(sql, param);

//        Map<String, Object> userData = userRepository.getByEmailOrUsername(userDTO.getEmail(), userDTO.getUsername());

        if ((Long) userData.get("cutUsername") == 1 && (Long) userData.get("cutEmail")== 1) {

            Optional<UserEntity> userEntity = userRepository.findById((long) userDTO.getUserId());

            log.info("user id : {}", userDTO.getUserId());

            if (userEntity.isPresent()) {

                userDTO.setPassword(userEntity.get().getPassword());
                log.info("Set password");

                UserEntity map = modelMapper.map(userDTO, UserEntity.class);
                log.info("Set data in Entity");

                userRepository.save(map);
                log.info("Save Data");

                log.info("Update user Record");
                return "UPDATE_DATA";

            }
        }
        return "DUPLICATE_DATA";
    }

    @Override
    @CacheEvict(value = "userData", allEntries = true)
    public String delete(int id) {
        userRepository.deleteById((long) id);
        log.info("Delete user Record");
        return "DELETE_DATA";
    }

    @Override
    public UserDTO getProfile(String email) {
        Optional<UserEntity> userEntity = userRepository.findByEmail(email);

        if (userEntity.isPresent()) {
            UserEntity userEntityData = userEntity.get();
            return modelMapper.map(userEntityData, UserDTO.class);
        }

        return null;
    }

    @Override
    public List<UserDTO> getUserData(String data) {
        List<UserEntity> UserDTO = userRepository.getByEmailOrUsernameOrDepartment(data);
        return UserDTO
                .stream()
                .map(userEntityData -> modelMapper.map(userEntityData, UserDTO.class))
                .toList();
    }

    @Override
    @CachePut(value = "userData")
    @CacheEvict(value = "userData", allEntries = true)
    public String statusUpdate(int id) {

        Optional<UserEntity> userEntity = userRepository.findById((long)id);

        if (userEntity.isPresent()) {

            String sql = "UPDATE user u SET u.status='approval' WHERE u.user_id = " + id;

            jdbcTemplate.update(sql);

            log.info("Update data {}", sql);

            return "UPDATE";
        }
       return "NOT_FOUND";
    }
}
