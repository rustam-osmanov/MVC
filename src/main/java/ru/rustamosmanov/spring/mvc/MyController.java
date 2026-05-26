package ru.rustamosmanov.spring.mvc;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class MyController {
    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping(value = "/test", produces = "text/plain;charset=UTF-8")
    @ResponseBody
    public String test() {
        return "Spring работает!";
    }

    @RequestMapping(value = "/my")
    public String showMyView(){
        return "myView";
    }

    @RequestMapping(value = "/askDetails")
    public String askEmployeeDetails(Model model){
        model.addAttribute("employee", new Employee());
        return "ask-employee-details-view";
    }

    @RequestMapping(value = "/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp, BindingResult result, Model model){
        //String empName = request.getParameter("employeeName");
      //  empName = "Мистер " + empName;
       // model.addAttribute("employeeName", empName);
      //  model.addAttribute("randomText", "Созданная переменная в модель");


        if (result.hasErrors()){
            return "ask-employee-details-view";
        }

        String surname = emp.getSurname();
        emp.setSurname("Mr " + surname);

        return "show-employee-details-view";
    }

}