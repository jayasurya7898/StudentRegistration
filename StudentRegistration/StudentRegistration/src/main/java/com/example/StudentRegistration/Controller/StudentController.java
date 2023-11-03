package com.example.StudentRegistration.Controller;

import com.example.StudentRegistration.Model.Student;
import com.example.StudentRegistration.Service.StudentService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class StudentController {

    private final StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping("/students/registration")
    public String showRegistrationForm(Model model) {
        model.addAttribute("student", new Student());
        return "student-registration";
    }

    @PostMapping("/students/registration")
    public String registerStudent(Student student) {
        studentService.save(student);
        return "redirect:/students/list";
    }

    @GetMapping("/list")
    public String showStudentList(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "student-list"; 
    }
    @GetMapping("/edit/{studentId}")
    public String editStudent(@PathVariable Long studentId, Model model) {
       
        return "edit-student"; 
    }

   
    @DeleteMapping("/delete/{studentId}")
    @ResponseBody
    public ResponseEntity<String> deleteStudent(@PathVariable Long studentId) {
       
        return ResponseEntity.ok("Student deleted successfully");
    }

}
