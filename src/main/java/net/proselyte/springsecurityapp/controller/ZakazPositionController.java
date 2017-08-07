package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Zakaz;
import net.proselyte.springsecurityapp.service.ZakazPositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Vova on 23.07.2017.
 */
@Controller
public class ZakazPositionController {
 private ZakazPositionService zakazPositionService;

    @Autowired(required = true)
    @Qualifier(value = "zakazPositionService")
    public void setZakazPositionService(ZakazPositionService zakazPositionService) {
        this.zakazPositionService = zakazPositionService;
    }

//КАЛЬКУЛЯЦИЯ = заказ.позиция.калькуляция.список материалов
    @RequestMapping("positionData/{id}")
    public String preCacl (@PathVariable("id") int id, Model model) {
        model.addAttribute("zakaz", new Zakaz());
        model.addAttribute("zakazPosition", this.zakazPositionService.getZakazPosition(id));
        return "positionData";
    }

}
