package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.dao.ZakazDao;
import net.proselyte.springsecurityapp.model.Zakaz;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ZakazServiceImpl implements ZakazDao {

    private ZakazDao zakazDao;
    public void setZakazDao(ZakazDao zakazDao) {this.zakazDao = zakazDao;}

    @Override
    @Transactional
    public void addZakaz(Zakaz zakaz) {this.zakazDao.addZakaz(zakaz);}

    @Override
    @Transactional
    public void updateZakaz(Zakaz zakaz) {this.zakazDao.updateZakaz(zakaz);
    }

    @Override
    @Transactional
    public void removeZakaz(int id) {this.zakazDao.removeZakaz(id);}

    @Override
    @Transactional
    public Zakaz getZakazById(int id) {return  this.zakazDao.getZakazById(id);}

    @Override
    @Transactional
    public List<Zakaz> zakazList() {
        return this.zakazDao.zakazList() ;
    }

    public void setZakazPositionDao(net.proselyte.springsecurityapp.dao.ZakazPositionDaoImpl zakazPositionDao) {
    }
}
