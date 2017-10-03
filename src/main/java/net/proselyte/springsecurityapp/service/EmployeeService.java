package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.model.Employee;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
public interface EmployeeService {
    public void addEmployee(Employee employee);

    public void updateEmployee(Employee employee);

    public void removeEmployee(int id);

    public Employee getEmployee(int id);

    public List<Employee> listEmployee();
}
