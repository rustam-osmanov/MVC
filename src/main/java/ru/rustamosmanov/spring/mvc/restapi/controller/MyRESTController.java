package ru.rustamosmanov.spring.mvc.restapi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.rustamosmanov.spring.mvc.entity.EmployeeBD;
import ru.rustamosmanov.spring.mvc.service.EmployeeService;

import java.util.List;

@RestController
@RequestMapping("/api")
public class MyRESTController {
    @Autowired
    public EmployeeService employeeService;

    @GetMapping("/employees")
    public List<EmployeeBD> showAllEmployees(){
        return employeeService.getAllEmployees();
    }
}
