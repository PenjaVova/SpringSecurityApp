package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazMaterials;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ZakazMaterialsDaoImpl implements ZakazMaterialsDao {
    private static final Logger logger = LoggerFactory.getLogger(ClientDao.class);
    private SessionFactory sessionFactory;
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addZakazMaterials(ZakazMaterials zakazMaterials) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(zakazMaterials);
    }

    @Override
    public void updateZakazMaterials(ZakazMaterials zakazMaterials) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(zakazMaterials);
    }

    @Override
    public void removeZakazMaterials(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazMaterials zakazMaterials = (ZakazMaterials) session.load(ZakazMaterials.class, new Integer(id));
        if (zakazMaterials!=null){
            session.delete(zakazMaterials);
        }
    }

    @Override
    public ZakazMaterials getZakazMaterialsById(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        ZakazMaterials zakazMaterials = (ZakazMaterials) session.load(ZakazMaterials.class, new Integer(id));
        return zakazMaterials;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<ZakazMaterials> zakazMaterialsList() {
            Session session = this.sessionFactory.getCurrentSession();
            List<ZakazMaterials> zakazMaterialsList = session.createQuery("from zakaz_materials").list();
            return zakazMaterialsList;

    }
}
