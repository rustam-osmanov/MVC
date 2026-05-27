package ru.rustamosmanov.spring.mvc.dao;

import ru.rustamosmanov.spring.mvc.entity.EmployeeBD;

import java.util.List;

public interface EmployeeDAO {
    public List<EmployeeBD> getAllEmployees();

    public void saveEmployee(EmployeeBD employee);

    public  void deleteEmployee(EmployeeBD employee);

    public EmployeeBD getEmployee(int id);
}
