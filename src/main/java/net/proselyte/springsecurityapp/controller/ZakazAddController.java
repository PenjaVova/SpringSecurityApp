package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.controller.autocomplete.TagClient;
import net.proselyte.springsecurityapp.model.Client;
import net.proselyte.springsecurityapp.model.Zakaz;
import net.proselyte.springsecurityapp.service.ClientService;
import net.proselyte.springsecurityapp.service.ZakazService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by vova on 04.08.2017.
 */
@Controller
public class ZakazAddController {

    private Set<TagClient> data = new HashSet<>();// сюда заливаю всех клиентов

    private ZakazService zakazService;
    private ClientService clientService;

    @Autowired
    @Qualifier ("clientService")
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    @Autowired
    @Qualifier ("zakazService")
    public void setZakazService(ZakazService zakazService) {
        this.zakazService = zakazService;
    }

    //добавить новый заказ - показываю Форму
    @RequestMapping(value = "/zakaz/add", method = RequestMethod.GET)
    public String ShowNewZakazForm(Model model) {
        Set<Client> clientSet= new HashSet<>(this.clientService.listClient());
//        data.clear();
        for (Client client: clientSet) {
            data.add(new TagClient(client.getId(),client.getFio()));
        }
        model.addAttribute("client", new Client());
        model.addAttribute("clientSet", clientSet);
        model.addAttribute("zakaz", new Zakaz());
        return "zakazAdd";
    }
//-------------------------------------------------------------------------------
    @RequestMapping(value = "/getTagClients", method = RequestMethod.GET)
    public @ResponseBody
    Set<TagClient> getTagClients(@RequestParam String tagName) {
        return simulateSearchResult(tagName);
    }
//-------------------------------------------------------------------------------
private Set<TagClient> simulateSearchResult(String tagName) {
    Set <TagClient> result = new HashSet<>();
    // iterate a list and filter by tagName
    for (TagClient tagClient: data) {
        if (tagClient.getTagName().contains(tagName)) {
            result.add(tagClient);
        }
    }
    return result;
}
//-------------------------------------------------------------------------------
    //добавить новый заказ
    @RequestMapping(value = "/zakaz/add", method = RequestMethod.POST)
    public String addZakaz(@ModelAttribute("zakaz") Zakaz zakaz) {
        if(zakaz.getId() == 0){
            zakaz.setDateStartZ(new Date()); // устанавливаю дату создания ЗАКАЗА
            this.zakazService.addZakaz(zakaz);
        }else {
            this.zakazService.updateZakaz(zakaz);
        }
        return "redirect:/zakaz";
    }

}
