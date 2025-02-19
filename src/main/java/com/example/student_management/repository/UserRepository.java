package com.example.student_management.repository;

import com.example.student_management.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<UserEntity, Long> {


    Optional<UserEntity> findByEmail(String email);

    @Query("SELECT u FROM UserEntity u " +
            "WHERE u.email = :email OR u.username = :username")
    Optional<UserEntity> getByEmailOrUsername(String email, String username);

    @Query("SELECT u FROM UserEntity u " +
            "WHERE u.email LIKE %:data% " +
            "OR u.username LIKE %:data% " +
            "OR u.department LIKE %:data%")
    List<UserEntity> getByEmailOrUsernameOrDepartment(String data);

}
