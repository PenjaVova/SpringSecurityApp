package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazPreCalc;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ZakazPreCalcDaoImpl implements ZakazPreCalcDao {
    private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {this.sessionFactory = sessionFactory;}

    @Override
    public void addZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(zakazPreCalc);
    }

    @Override
    public void updateZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(zakazPreCalc);
    }

    @Override
    public void removeZakazPreCalc(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPreCalc zakazPreCalc= (ZakazPreCalc) session.load(ZakazPreCalc.class, new Integer(id));

        if(zakazPreCalc!=null){
            session.delete(zakazPreCalc);
        }
    }

    @Override
    public ZakazPreCalc getZakazPreCalcById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPreCalc zakazPreCalc = (ZakazPreCalc) session.load(ZakazPreCalc.class, new Integer(id));
        return zakazPreCalc;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<ZakazPreCalc> zakazPreCalcList() {
        Session session = this.sessionFactory.getCurrentSession();
        List<ZakazPreCalc> zakazPreCalcList= session.createQuery("from ZakazPreCalc").list();

            return zakazPreCalcList;

    }
}
