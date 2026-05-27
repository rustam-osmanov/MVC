package ru.rustamosmanov.spring.mvc.dao;

import jakarta.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ru.rustamosmanov.spring.mvc.entity.EmployeeBD;

import java.util.List;

@Repository
public class EmployeeDaoImpl implements EmployeeDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    @Transactional
    public List<EmployeeBD> getAllEmployees() {
        Session session = sessionFactory.openSession();
        List<EmployeeBD> allEmployees = session.createQuery("from EmployeeBD",EmployeeBD.class)
                .getResultList();
        return allEmployees;
    }
}
