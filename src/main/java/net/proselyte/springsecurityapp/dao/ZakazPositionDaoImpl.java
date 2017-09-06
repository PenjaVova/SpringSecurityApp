package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazPosition;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

//Created by Vova on 15.07.2017.

@Repository
public class ZakazPositionDaoImpl implements ZakazPositionDao {

    private static final Logger logger = LoggerFactory.getLogger(ZakazPosition.class);
    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}

    @Override
    public void addZakazPosition(ZakazPosition zakazPosition) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(zakazPosition);
    }

    @Override
    public void updateZakazPosition(ZakazPosition zakazPosition) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(zakazPosition);
    }

    @Override
    public void removeZakazPosition(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPosition zakazPosition = (ZakazPosition) session.get(ZakazPosition.class,new Integer(id));
        if (zakazPosition!= null){
            session.delete(zakazPosition);
        }
    }

    @Override
    public ZakazPosition getZakazPositionById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPosition zakazPosition = (ZakazPosition) session.get(ZakazPosition.class,new Integer(id));
        return zakazPosition;
    }

    @Override
    @SuppressWarnings("unchecked")
    public Set<ZakazPosition> ZakazPositionList() {
        Session session = this.sessionFactory.getCurrentSession();
        List<ZakazPosition> zakazPositions = session.createQuery("from ZakazPosition").list();
        Set<ZakazPosition> zakazPositionList = new HashSet<>(zakazPositions);
        return zakazPositionList;
    }
}
