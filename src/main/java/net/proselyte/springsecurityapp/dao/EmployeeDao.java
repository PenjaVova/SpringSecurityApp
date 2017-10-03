package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Employee;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
public interface EmployeeDao {
    public void addEmployee(Employee Employee);

    public void updateEmployee(Employee Employee);

    public void removeEmployee(int id);

    public Employee getEmployeeById(int id);

    public List<Employee> listEmployee();
}