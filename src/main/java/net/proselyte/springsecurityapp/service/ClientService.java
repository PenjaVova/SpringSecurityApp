package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.model.Client;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
public interface ClientService {
    public void addClient (Client client);

    public void updateClient (Client client);

    public void removeClient (int id);

    public Client getClient (int id);

    public List<Client> listClient();
}
