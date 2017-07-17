package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.dao.ClientDao;
import net.proselyte.springsecurityapp.dao.ClientDaoImpl;
import net.proselyte.springsecurityapp.model.Client;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
@Service
public class ClientServiceImpl implements ClientService{

    private ClientDao clientDao;
    private ClientDaoImpl zakazPreCalcDao;

    public void setClientDao (ClientDao clientDao){
        this.clientDao = clientDao;
    }


    @Override
    @Transactional
    public void addClient(Client client) {
        this.clientDao.addClient(client);
    }

    @Override
    @Transactional
    public void updateClient(Client client) {
        this.clientDao.updateClient(client);
    }

    @Override
    @Transactional
    public void removeClient(int id) {
        this.clientDao.removeClient(id);
    }

    @Override
    @Transactional
    public Client getClient(int id) {
        return this.clientDao.getClientById(id);
    }

    @Override
    @Transactional
    public List<Client> listClient() {
        return this.clientDao.listClient();
    }

    public void setZakazPreCalcDao(ClientDaoImpl zakazPreCalcDao) {
        this.zakazPreCalcDao = zakazPreCalcDao;
    }

    public ClientDaoImpl getZakazPreCalcDao() {
        return zakazPreCalcDao;
    }

    public void setZakazMaterialsDao(ClientDaoImpl zakazMaterialsDao) {
    }
}
