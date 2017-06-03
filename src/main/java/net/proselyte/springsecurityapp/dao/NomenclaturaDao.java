package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Nomenclatura;

import java.util.List;

/**
 * Created by Vova on 30.05.2017.
 */
public interface NomenclaturaDao {
    public void addNomenclatura(Nomenclatura Nomenclatura);

    public void updateNomenclatura(Nomenclatura Nomenclatura);

    public void removeNomenclatura(int id);

    public Nomenclatura getNomenclaturaById(int id);

    public List<Nomenclatura> listNomenclatura();
}
