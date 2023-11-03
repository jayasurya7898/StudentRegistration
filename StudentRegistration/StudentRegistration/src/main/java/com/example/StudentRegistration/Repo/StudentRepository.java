package com.example.StudentRegistration.Repo;

import com.example.StudentRegistration.Model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
    // You can add custom query methods if needed
}
