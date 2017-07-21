package net.proselyte.springsecurityapp.dao;

import jdk.nashorn.internal.runtime.Context;
import net.proselyte.springsecurityapp.model.Client;
import net.proselyte.springsecurityapp.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Vova on 11.06.2017.
 */
@Repository
public class ClientDaoImpl implements ClientDao {
    private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    @Override //добавить клиента
    public void addClient(Client client) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(client);
        logger.info("client successfully saved. client details: " + client);
    }

    @Override //обновить клиента
    public void updateClient(Client client) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(client);
        //logger.info("RAB " + username + " updated client, details: " + client); // вытаскиваю
        logger.info(" updated client, details: " + client); // вытаскиваю

    }

    @Override //удалить
    public void removeClient(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Client client = (Client) session.load(Client.class, new Integer(id));

        if(client !=null){
            session.delete(client);
        }
        //logger.info("RAB " + user.getUsername() + " deleted client, details: " + client); // вытаскиваю
        logger.info(" deleted client, details: " + client); // вытаскиваю
    }

    @Override //получить по ID
    public Client getClientById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Client client = (Client) session.load(Client.class, new Integer(id));

        //logger.info("RAB " + user.getUsername() + " smotrel clienta, details: " + client); // вытаскиваю
        logger.info(" smotrel clienta, details: " + client); // вытаскиваю
        return client;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Client> listClient() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Client> clientList = session.createQuery("from Client").list();

        return clientList;
    }
}
