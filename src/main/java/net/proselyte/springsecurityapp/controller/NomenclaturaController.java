package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Nomenclatura;
import net.proselyte.springsecurityapp.service.NomenclaturaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NomenclaturaController {
    private NomenclaturaService nomenclaturaService;

    @Autowired(required = true)
    @Qualifier(value = "nomenclaturaService")
    public void setNomenclaturaService(NomenclaturaService nomenclaturaService) {
        this.nomenclaturaService = nomenclaturaService;
    }
//страница со списком эелементов Номенклатуры элементов
    @RequestMapping (value = "nomenclatura", method = RequestMethod.GET)
    public String listNomenclatura (Model model) {
        model.addAttribute("nomenclatura",new Nomenclatura());
        model.addAttribute("listNomenclatura", this.nomenclaturaService.listNomenclatura());

        return "nomenclatura";
    }

//добавить новый элемент
    @RequestMapping(value = "/nomenclatura/add", method = RequestMethod.POST)
    public String addNomenclatura(@ModelAttribute("nomenclatura") Nomenclatura nomenclatura){
        if(nomenclatura.getId() == 0){
            this.nomenclaturaService.addNomenclatura(nomenclatura);
        }else {
            this.nomenclaturaService.updateNomenclatura(nomenclatura);
        }

        return "redirect:/nomenclatura";
    }
//удалить
    @RequestMapping("/remove/{id}")
        public String removeBook(@PathVariable("id") int id){
            this.nomenclaturaService.removeNomenclatura(id);

        return "redirect:/nomenclatura";
    }
//изменить
@RequestMapping("edit/{id}")
public String editNomenclatura(@PathVariable("id") int id, Model model){
    model.addAttribute("nomenclatura", this.nomenclaturaService.getNomenclaturaById(id));
    model.addAttribute("listNomenclatura", this.nomenclaturaService.listNomenclatura());

    return "nomenclatura";
}


    @RequestMapping ("nomenclaturadata/{id}")
        public String nomenclaturadata (@PathVariable("id") int id, Model model) {
        model.addAttribute("nomenclatura", this.nomenclaturaService.getNomenclaturaById(id));
            return "nomenclaturadata";
    }

}