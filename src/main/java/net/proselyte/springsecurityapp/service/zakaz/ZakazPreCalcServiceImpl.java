package net.proselyte.springsecurityapp.service.zakaz;

import net.proselyte.springsecurityapp.dao.ZakazPreCalcDao;
import net.proselyte.springsecurityapp.model.ZakazPreCalc;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ZakazPreCalcServiceImpl implements ZakazPreCalcService {
    private ZakazPreCalcDao zakazPreCalcDao;

    public void setZakazPreCalcDao(ZakazPreCalcDao zakazPreCalcDao) {
        this.zakazPreCalcDao = zakazPreCalcDao;
    }

    @Override
    @Transactional
    public void addZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        this.zakazPreCalcDao.addZakazPreCalc(zakazPreCalc);
    }

    @Override
    @Transactional
    public void updateZakazPreCalc(ZakazPreCalc zakazPreCalc) {
        this.zakazPreCalcDao.updateZakazPreCalc(zakazPreCalc);
    }

    @Override
    @Transactional
    public void removeZakazPreCalc(int id) {
        this.zakazPreCalcDao.removeZakazPreCalc(id);
    }

    @Override
    @Transactional
    public ZakazPreCalc getZakazPreCalc(int id) {
        return this.zakazPreCalcDao.getZakazPreCalcById(id);
    }

    @Override
    @Transactional
    public List<ZakazPreCalc> zakazPreCalcList() {
        return this.zakazPreCalcDao.zakazPreCalcList();
    }
}