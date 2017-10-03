package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.dao.EmployeeDao;
import net.proselyte.springsecurityapp.dao.EmployeeDaoImpl;
import net.proselyte.springsecurityapp.model.Employee;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
@Service
public class EmployeeServiceImpl implements EmployeeService{

    private EmployeeDao employeeDao;
    private EmployeeDaoImpl zakazPreCalcDao;

    public void setEmployeeDao (EmployeeDao employeeDao){
        this.employeeDao = employeeDao;
    }


    @Override
    @Transactional
    public void addEmployee(Employee employee) {
        this.employeeDao.addEmployee(employee);
    }

    @Override
    @Transactional
    public void updateEmployee(Employee employee) {
        this.employeeDao.updateEmployee(employee);
    }

    @Override
    @Transactional
    public void removeEmployee(int id) {
        this.employeeDao.removeEmployee(id);
    }

    @Override
    @Transactional
    public Employee getEmployee(int id) {
        return this.employeeDao.getEmployeeById(id);
    }

    @Override
    @Transactional
    public List<Employee> listEmployee() {
        return this.employeeDao.listEmployee();
    }

    public void setZakazPreCalcDao(EmployeeDaoImpl zakazPreCalcDao) {
        this.zakazPreCalcDao = zakazPreCalcDao;
    }

    public EmployeeDaoImpl getZakazPreCalcDao() {
        return zakazPreCalcDao;
    }

    public void setZakazMaterialsDao(EmployeeDaoImpl zakazMaterialsDao) {
    }
}
