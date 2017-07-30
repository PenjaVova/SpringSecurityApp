package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Zakaz;
import net.proselyte.springsecurityapp.service.ZakazService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * Created by Vova on 18.07.2017.
 */
@Controller
public class ZakazController {

    private ZakazService zakazService;

    @Autowired (required = true)
    @Qualifier (value = "zakazService")
    public void setClientService(ZakazService zakazService) {
        this.zakazService = zakazService;
    }

//страница со списком ЗАКАЗОВ
    @RequestMapping(value = "zakaz", method = RequestMethod.GET)
    public String zakazList (Model model) {
        model.addAttribute("zakaz", new Zakaz());
        model.addAttribute("zakazList",this.zakazService.zakazList());
        return "zakaz";
    }
//страница со списком ПОЗИЦИЙ по ЗАКАЗУ
    @RequestMapping ("zakazData/{id}")
    public String zakazdata (@PathVariable("id") int id, Model model) {
        model.addAttribute("zakaz", this.zakazService.getZakaz(id));
        return "zakazData";
    }

    //добавить новый заказ
    @RequestMapping(value = "/zakaz/add", method = RequestMethod.POST)
    public String addZakaz(@ModelAttribute("zakaz") Zakaz zakaz) {
        if(zakaz.getId() == 0){
            this.zakazService.addZakaz(zakaz);
        }else {
            this.zakazService.updateZakaz(zakaz);
        }
        return "redirect:/zakaz";
    }


}
