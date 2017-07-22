package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.model.Zakaz;
import net.proselyte.springsecurityapp.service.ZakazService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    //страница со списком клиентов
    @RequestMapping(value = "zakaz", method = RequestMethod.GET)
    public String listNomenclatura (Model model) {
        model.addAttribute("zakaz", new Zakaz());
        model.addAttribute("zakazList",this.zakazService.zakazList());

        return "zakaz"; // TODO: 18.07.2017 написать страницу JSP под заказы
    }
}
