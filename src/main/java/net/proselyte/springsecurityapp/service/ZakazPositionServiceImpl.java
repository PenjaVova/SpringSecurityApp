package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.dao.ZakazPositionDao;
import net.proselyte.springsecurityapp.model.ZakazPosition;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * Created by Vova on 17.07.2017.
 */
@Service
public class ZakazPositionServiceImpl implements ZakazPositionService{

    private ZakazPositionDao zakazPositionDao;

    public void setZakazPositionDao(ZakazPositionDao zakazPositionDao) {
        this.zakazPositionDao = zakazPositionDao;
    }

    @Override
    @Transactional
    public void addZakazPosition(ZakazPosition zakazPosition) {
        this.zakazPositionDao.addZakazPosition(zakazPosition);
    }

    @Override
    @Transactional
    public void updateZakazPosition(ZakazPosition zakazPosition) {
        this.zakazPositionDao.updateZakazPosition(zakazPosition);
    }

    @Override
    @Transactional
    public void removeZakazPosition(int id) {
        this.zakazPositionDao.removeZakazPosition(id);
    }

    @Override
    @Transactional
    public ZakazPosition getZakazPosition(int id) {
        return this.zakazPositionDao.getZakazPositionById(id);
    }

    @Override
    @Transactional
    public Set<ZakazPosition> zakazPositionListL() {
        return this.zakazPositionDao.ZakazPositionList();
    }
}
