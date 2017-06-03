package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.dao.NomenclaturaDao;
import net.proselyte.springsecurityapp.model.Nomenclatura;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class NomenclaturaServiceImpl implements NomenclaturaService {

    private NomenclaturaDao nomenclaturaDao;

    public void setNomenclaturaDao(NomenclaturaDao nomenclaturaDao) {
        this.nomenclaturaDao = nomenclaturaDao;
    }

    @Override
    @Transactional
    public void addNomenclatura(Nomenclatura nomenclatura) {
        this.nomenclaturaDao.addNomenclatura(nomenclatura);
    }

    @Override
    @Transactional
    public void updateNomenclatura(Nomenclatura nomenclatura) {
        this.nomenclaturaDao.updateNomenclatura(nomenclatura);

    }

    @Override
    @Transactional
    public void removeNomenclatura(int id) {
        this.nomenclaturaDao.removeNomenclatura(id);

    }

    @Override
    @Transactional
    public Nomenclatura getNomenclaturaById(int id) {
        return this.nomenclaturaDao.getNomenclaturaById(id);
    }

    @Override
    @Transactional
    public List<Nomenclatura> listNomenclatura() {
        return this.nomenclaturaDao.listNomenclatura();
    }
}
