package net.proselyte.springsecurityapp.controller.autocomplete;

import net.proselyte.springsecurityapp.model.Nomenclatura;
import net.proselyte.springsecurityapp.service.NomenclaturaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
@Controller
public class AutocompleteNomenclatura {

    private List<Tag> data = new ArrayList<>();// сюда заливаю лист номернклатуры

    private NomenclaturaService nomenclaturaService; //беру полем, чтобы воспользоваться методом this.nomenclaturaService.listNomenclatura()

    @Autowired(required = true)
    @Qualifier(value = "nomenclaturaService")
    public void setNomenclaturaService(NomenclaturaService nomenclaturaService) {
        this.nomenclaturaService = nomenclaturaService;
    }

//-------------------------------------------------------------------------------
    @RequestMapping(value = "/AutocompleteNomenclatura", method = RequestMethod.GET)
    public String aaa(Model model) {
        List<Nomenclatura> nomenclaturaList = this.nomenclaturaService.listNomenclatura();
        for (Nomenclatura anomenclaturaList: nomenclaturaList) {
            data.add(new Tag(anomenclaturaList.getId(),anomenclaturaList.getNom_elem()));
        }
        model.addAttribute("nomenclatura",new Nomenclatura());
        model.addAttribute("nomenclaturaList", nomenclaturaList);
        return "AutocompleteNomenclatura";
    }
//-------------------------------------------------------------------------------
    @RequestMapping(value = "/getTags", method = RequestMethod.GET)
    public @ResponseBody
    List<Tag> getTags(@RequestParam String tagName) {

        return simulateSearchResult(tagName);

    }
//-------------------------------------------------------------------------------
    private List<Tag> simulateSearchResult(String tagName) {

        List<Tag> result = new ArrayList<Tag>();

        // iterate a list and filter by tagName
        for (Tag tag : data) {
            if (tag.getTagName().contains(tagName)) {
                result.add(tag);
            }
        }

        return result;
    }

}