package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Zakaz;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Vova on 15.07.2017.
 */
@Repository
public class ZakazDaoImpl implements ZakazDao {

    private static final Logger logger = LoggerFactory.getLogger(ZakazDao.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override //СОХРАНИТЬ
    public void addZakaz(Zakaz zakaz) {
        Session session = this.sessionFactory.getCurrentSession(); // TODO: 22.07.2017 getCurrentSession()
        session.persist(zakaz);
    }

    @Override //обновить
    public void updateZakaz(Zakaz zakaz) {
        Session session = this.sessionFactory.openSession();
        session.update(zakaz);
        session.close();// TODO: 22.07.2017 getCurrentSession()
    }

    @Override  //удалить
    public void removeZakaz(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Zakaz zakaz = (Zakaz) session.get(Zakaz.class,new Integer(id));
        if (zakaz!= null){
            session.delete(zakaz);
        }
    }

    @Override
    public Zakaz getZakazById(int id) {
        Session session = this.sessionFactory.openSession();
        Zakaz zakaz = (Zakaz) session.get(Zakaz.class,new Integer(id));
        session.close();// TODO: 22.07.2017 getCurrentSession()
        return zakaz;

    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Zakaz> zakazList() {
        Session session = this.sessionFactory.openSession ();
        List<Zakaz> zakazList = session.createQuery("from Zakaz").list();
        session.close();// TODO: 22.07.2017 getCurrentSession()
        return zakazList;
    }
}
