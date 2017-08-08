package net.proselyte.springsecurityapp.service.zakaz;

import net.proselyte.springsecurityapp.dao.ZakazMaterialsDao;
import net.proselyte.springsecurityapp.model.ZakazMaterials;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service

public class ZakazMaterialsServiceImpl implements ZakazMaterialsService {
    private ZakazMaterialsDao zakazMaterialsDao;

    public void setZakazMaterialsDao(ZakazMaterialsDao zakazMaterialsDao) {
        this.zakazMaterialsDao = zakazMaterialsDao;
    }

    @Override
    @Transactional
    public void addZakazMaterials(ZakazMaterials zakazMaterials) {
        this.zakazMaterialsDao.addZakazMaterials(zakazMaterials);
    }

    @Override
    @Transactional
    public void updateZakazMaterials(ZakazMaterials zakazMaterials) {
        this.zakazMaterialsDao.updateZakazMaterials(zakazMaterials);
    }

    @Override
    @Transactional
    public void removeZakazMaterials(int id) {
    this.zakazMaterialsDao.removeZakazMaterials(id);
    }

    @Override
    @Transactional
    public ZakazMaterials getZakazMaterials(int id) {
        return this.zakazMaterialsDao.getZakazMaterialsById(id);
    }

    @Override
    @Transactional
    public List<ZakazMaterials> ZakazMaterialList() {
        return this.zakazMaterialsDao.zakazMaterialsList();
    }
}
