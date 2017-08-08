package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.service.zakaz.ZakazPreCalcService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/* Created by Vova on 25.07.2017*/
@Controller
public class ZakazPreCalcController {

    private ZakazPreCalcService zakazPositionService;
    @Autowired
    public void setZakazPositionService(@Qualifier("zakazPreCalcService") ZakazPreCalcService zakazPositionService) {
        this.zakazPositionService = zakazPositionService;
    }

//СПИСОК елементов калькуляции
    @RequestMapping("preCalcData/{id}")
    public String preCacl (@PathVariable("id") int id, Model model) {
        model.addAttribute("preCalcData", this.zakazPositionService.getZakazPreCalc(id));
        return "preCalcData";
        }
    }
