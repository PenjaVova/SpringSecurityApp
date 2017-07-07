package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazPreCalc;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by Vova on 30.06.2017.
 */
@Repository
public class ZakazPreCalcDaoImpl implements ZakazPreCalcDao {
    private static final Logger logger = LoggerFactory.getLogger(ZakazPreCalcDao.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(zakazPreCalc);
        logger.info("ZakazPreCalcDao successfully saved. ZakazPreCalc details: " + zakazPreCalc);
    }

    @Override
    public void updateZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(zakazPreCalc);
        logger.info("ZakazPreCalcDao successfully updated. ZakazPreCalc details: " + zakazPreCalc);
    }

    @Override
    public void removeZakazPreCalc(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPreCalc zakazPreCalc = (ZakazPreCalc) session.load(ZakazPreCalc.class, new Integer(id));
        if (zakazPreCalc!=null){
            session.delete(zakazPreCalc);
        }

        logger.info("ZakazPreCalcDao successfully deleted. ZakazPreCalc details: " + zakazPreCalc);
    }

    @Override
    public ZakazPreCalc getZakazPreCalcById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazPreCalc zakazPreCalc = (ZakazPreCalc) session.load(ZakazPreCalc.class, new Integer(id));
        return zakazPreCalc;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<ZakazPreCalc> listZakazPreCalc() {
        Session session = this.sessionFactory.getCurrentSession();
        String sql = "from ZakazPreCalc";
        List<ZakazPreCalc> zakazPreCalc = session.createQuery("sql").list();
        return null;
    }
}