package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Nomenclatura;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Vova on 30.05.2017.
 */
@Repository
public class NomenclaturaDaoImpl implements NomenclaturaDao{
    private static final Logger logger = LoggerFactory.getLogger(NomenclaturaDao.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addNomenclatura(Nomenclatura nomenclatura) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(nomenclatura);
        logger.info("Nomenclatura successfully saved. Nomenclatura details: " + nomenclatura);

    }

    @Override
    public void updateNomenclatura(Nomenclatura nomenclatura) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(nomenclatura);
        logger.info("Nomenclatura successfully updated. Nomenclatura details: " + nomenclatura);
    }

    @Override
    public void removeNomenclatura(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Nomenclatura nomenclatura = (Nomenclatura)  session.load(Nomenclatura.class, new Integer(id));

        if(nomenclatura!=null){
            session.delete(nomenclatura);
        }
        logger.info("nomenclatura successfully removed. nomenclatura details: " + nomenclatura);

    }

    @Override
    public Nomenclatura getNomenclaturaById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Nomenclatura nomenclatura = (Nomenclatura) session.load(Nomenclatura.class,new Integer(id));

        logger.info("nomenclatura successfully loaded. nomenclatura details: " + nomenclatura);
        return nomenclatura;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Nomenclatura> listNomenclatura() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Nomenclatura> nomenclaturaList = session.createQuery("from Nomenclatura").list();//:TODO nomenclatura добавить BEAN в XML
       /* for(Nomenclatura nomenclatura: listNomenclatura()){
        logger.info("Book list: " + nomenclaturaList);
        }*/
        return nomenclaturaList;
    }
}
