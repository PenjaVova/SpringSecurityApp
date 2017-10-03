package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Client;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
public interface ClientDao {
    public void addClient(Client Client);

    public void updateClient(Client Client);

    public void removeClient(int id);

    public Client getClientById(int id);

    public List<Client> listClient();
}