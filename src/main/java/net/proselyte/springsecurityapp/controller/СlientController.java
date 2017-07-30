package net.proselyte.springsecurityapp.controller;

import net.proselyte.springsecurityapp.dao.ClientDao;
import net.proselyte.springsecurityapp.model.Client;
import net.proselyte.springsecurityapp.service.ClientService;
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
public class СlientController {
    private ClientService clientService;

    @Autowired (required = true)
    @Qualifier (value = "clientService")
    public void setClientService(ClientService clientService) {
        this.clientService = clientService;
    }

    //страница со списком клиентов
    @RequestMapping(value = "client", method = RequestMethod.GET)
    public String listNomenclatura (Model model) {
        model.addAttribute("client", new Client());
        model.addAttribute("listClient",this.clientService.listClient());

        return "client";
    }

    //добавить клиента
    @RequestMapping(value = "/client/add", method = RequestMethod.POST)
    public String addNomenclatura(@ModelAttribute("client") Client client) {
        if (client.getId() == 0) {
            this.clientService.addClient(client);
        } else {
            this.clientService.updateClient(client);
        }
//отсебя
         Authentication auth = SecurityContextHolder.getContext().getAuthentication();
         String username = auth.getName();
        final Logger logger = LoggerFactory.getLogger(СlientController.class);
        logger.info("Sotrudnik " +username+ " client successfully saved. client details: " + client);
//конец от себя
        return "redirect:/client";
    }

    //удалить
    @RequestMapping("/client/remove/{id}") //добавил /client
    public String removeClient (@PathVariable("id") int id){
        this.clientService.removeClient(id);

        return "redirect:/client";
    }
    //изменить
    @RequestMapping("client/edit/{id}") //изменить client/
    public String editClient(@PathVariable("id") int id, Model model){
        model.addAttribute("client", this.clientService.getClient(id));
        model.addAttribute("listClient", this.clientService.listClient());

        return "client";
    }
    //инфа по клиенту
    @RequestMapping ("clientdata/{id}")
    public String clientdata (@PathVariable("id") int id, Model model) {
        model.addAttribute("client", this.clientService.getClient(id));
        return "clientdata";
    }
}
