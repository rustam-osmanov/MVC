package ru.rustamosmanov.spring.mvc.service;

import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.rustamosmanov.spring.mvc.dao.EmployeeDAO;
import ru.rustamosmanov.spring.mvc.entity.EmployeeBD;

import java.util.List;
@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    @Transactional
    public List<EmployeeBD> getAllEmployees() {
        return employeeDAO.getAllEmployees();
    }
}
