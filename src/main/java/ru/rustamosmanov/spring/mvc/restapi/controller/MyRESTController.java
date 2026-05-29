package ru.rustamosmanov.spring.mvc.restapi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.rustamosmanov.spring.mvc.entity.EmployeeBD;
import ru.rustamosmanov.spring.mvc.restapi.exception.EmployeeIncorrectData;
import ru.rustamosmanov.spring.mvc.restapi.exception.NoSuchEmployeeException;
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

    @GetMapping("/employees/{id}")
    public EmployeeBD getEmployeeById(@PathVariable("id") int id) {

        EmployeeBD employeeBD = null;
        employeeBD = employeeService.getEmployee(id);
        if (employeeBD == null) {
            throw new NoSuchEmployeeException("Указанный ID =" + id
                    + " не найден в БД!");
        }
        return employeeBD;
    }
}
