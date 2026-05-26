package ru.rustamosmanov.spring.mvc;

import jakarta.validation.constraints.*;
import ru.rustamosmanov.spring.mvc.validation.CheckEmail;

import java.util.HashMap;
import java.util.Map;

public class Employee {
    @Size(min = 2, max = 200, message = "Имя должно быть не меньше 2 символов и не больше 200 символов!")
    @NotBlank(message = "Имя не может быть пустым")
    private String name;
    @Size(min = 2, max = 200, message = "Фамилия должна быть не меньше 2 символов и не больше 200 символов!")
    @NotBlank(message = "Фамилия не может быть пустым")
    private String surname;
    @Min(value = 500, message = "Зарплата не может быть ниже 500")
    @Max(value = 1000_000, message = "Зарплата не может быть больше 1000 000")
    private int salary;
    private String department;
    private Map<String, String> departments;
    private String carBrand;
    private Map<String, String> carBrands;
    private String[] languages;
    private Map<String, String> languagesList;
    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}",message = "Введите номер телефона в формате xxx-xx-xx")
    private String phoneNumber;
    @CheckEmail(value = "xyz.com",message = "Email  должен завершаться на xyz.com")
    private String email;

    public Employee() {
        Map<String, String> departments = new HashMap<>();
        departments.put("Information Technology", "IT");
        departments.put("Human Resources", "HR");
        departments.put("Sales", "SL");
        this.setDepartments(departments);

        Map<String, String> carBrands = new HashMap<>();
        carBrands.put("BMW", "BMW");
        carBrands.put("Audi", "Audi");
        carBrands.put("Mersedes-Benz", "Mersedes-Benz");
        carBrands.put("Porshe", "Porshe");
        this.setCarBrands(carBrands);

        Map<String, String> languages = new HashMap<>();
        languages.put("RU", "Russian");
        languages.put("EN", "English");
        languages.put("FR", "French");
        languages.put("DE", "Deutch");
        this.setLanguagesList(languages);

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Map<String, String> getDepartments() {
        return departments;
    }

    public void setDepartments(Map<String, String> departments) {
        this.departments = departments;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public Map<String, String> getCarBrands() {
        return carBrands;
    }

    public void setCarBrands(Map<String, String> carBrands) {
        this.carBrands = carBrands;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public Map<String, String> getLanguagesList() {
        return languagesList;
    }

    public void setLanguagesList(Map<String, String> languagesList) {
        this.languagesList = languagesList;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", salary=" + salary +
                ", department='" + department + '\'' +
                '}';
    }
}
