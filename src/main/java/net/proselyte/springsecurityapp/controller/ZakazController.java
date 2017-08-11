package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Zakaz;
import net.proselyte.springsecurityapp.model.ZakazPosition;
import net.proselyte.springsecurityapp.service.zakaz.ZakazPositionService;
import net.proselyte.springsecurityapp.service.zakaz.ZakazService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/* Created by Vova on 18.07.2017*/
@Controller
public class ZakazController {

    private ZakazService zakazService;
    private ZakazPositionService zakazPositionService;

    @Autowired (required = true)
    @Qualifier (value = "zakazPositionService")
    public void setZakazPositionService(ZakazPositionService zakazPositionService) {
        this.zakazPositionService = zakazPositionService;
    }

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
        Zakaz zakaz = this.zakazService.getZakaz(id);
        List <ZakazPosition> positionList = zakaz.getPositionList();
        model.addAttribute("zakaz", zakaz);
        model.addAttribute("zakaz_id",id);
        model.addAttribute("positionList", positionList);
        return "zakazData";
    }

//удалить
    @RequestMapping("/zakaz/remove/{id}")
    public String removeZakaz(@PathVariable("id") int id){
        this.zakazService.removeZakaz(id);
        return "redirect:/zakaz";
    }

}