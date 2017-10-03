package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Employee;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
@Repository
public class EmployeeDaoImpl implements EmployeeDao {
    private static final Logger logger = LoggerFactory.getLogger(EmployeeDao.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override //добавить клиента
    public void addEmployee(Employee employee) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(employee);
        logger.info("employee successfully saved. employee details: " + employee);
    }

    @Override //обновить клиента
    public void updateEmployee(Employee employee) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(employee);
        //logger.info("RAB " + username + " updated employee, details: " + employee); // вытаскиваю
        logger.info(" updated employee, details: " + employee); // вытаскиваю

    }

    @Override //удалить
    public void removeEmployee(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Employee employee = (Employee) session.load(Employee.class, new Integer(id));

        if(employee !=null){
            session.delete(employee);
        }
        //logger.info("RAB " + user.getUsername() + " deleted employee, details: " + employee); // вытаскиваю
        logger.info(" deleted employee, details: " + employee); // вытаскиваю
    }

    @Override //получить по ID
    public Employee getEmployeeById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Employee employee = (Employee) session.load(Employee.class, new Integer(id));

        //logger.info("RAB " + user.getUsername() + " smotrel employeea, details: " + employee); // вытаскиваю
        logger.info(" smotrel employeea, details: " + employee); // вытаскиваю
        return employee;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Employee> listEmployee() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Employee> employeeList = session.createQuery("from Employee").list();

        return employeeList;
    }
}
