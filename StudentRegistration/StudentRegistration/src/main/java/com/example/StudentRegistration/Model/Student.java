package com.example.StudentRegistration.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String mobile;
    private String gender;
    private String email;
    private String address;
    private String dob;
    private String studentClass;
    private String fatherName;
    private String motherName;

    public Student() {
        // Default constructor
    }

    public Student(String name, String mobile, String gender, String email, String address, String dob, String studentClass, String fatherName, String motherName) {
        this.name = name;
        this.mobile = mobile;
        this.gender = gender;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.studentClass = studentClass;
        this.fatherName = fatherName;
        this.motherName = motherName;
    }

    // Getters and setters for all fields

    @Override
    public String toString() {
        return "Student [id=" + id + ", name=" + name + ", mobile=" + mobile + ", gender=" + gender + ", email=" + email
                + ", address=" + address + ", dob=" + dob + ", studentClass=" + studentClass + ", fatherName=" + fatherName
                + ", motherName=" + motherName + "]";
    }
}
