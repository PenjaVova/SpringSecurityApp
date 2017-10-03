package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Employee;
import net.proselyte.springsecurityapp.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {
    private EmployeeService employeeService;

    @Autowired (required = true)
    @Qualifier (value = "employeeService")
    public void setEmployeeService(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    //страница со списком клиентов
    @RequestMapping(value = "employee", method = RequestMethod.GET)
    public String listNomenclatura (Model model) {
        model.addAttribute("employee", new Employee());
        model.addAttribute("listEmployee",this.employeeService.listEmployee());

        return "employee";
    }

    //добавить клиента
    @RequestMapping(value = "/employee/add", method = RequestMethod.POST)
    public String addEmployee(@ModelAttribute("employee") Employee employee) {
        if (employee.getId() == 0) {
            this.employeeService.addEmployee(employee);
        } else {
            this.employeeService.updateEmployee(employee);
        }
//отсебя
         Authentication auth = SecurityContextHolder.getContext().getAuthentication();
         String username = auth.getName();
        final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
        logger.info("Sotrudnik " +username+ " employee successfully saved. employee details: " + employee);
//конец от себя
        return "redirect:/employee";
    }

    //удалить
    @RequestMapping("/employee/remove/{id}")
    public String removeEmployee (@PathVariable("id") int id){
        this.employeeService.removeEmployee(id);

        return "redirect:/employee";
    }
    //изменить
    @RequestMapping("employee/edit/{id}") //изменить employee/
    public String editEmployee(@PathVariable("id") int id, Model model){
        model.addAttribute("employee", this.employeeService.getEmployee(id));
        model.addAttribute("listEmployee", this.employeeService.listEmployee());

        return "employee";
    }
    //инфа по клиенту
    @RequestMapping ("employeedata/{id}")
    public String employeedata (@PathVariable("id") int id, Model model) {
        model.addAttribute("employee", this.employeeService.getEmployee(id));
        return "employeedata";
    }
}
