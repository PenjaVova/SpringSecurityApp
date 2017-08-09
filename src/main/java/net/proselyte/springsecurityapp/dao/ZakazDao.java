package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.Zakaz;

import java.util.List;

/**
 * Created by Vova on 15.07.2017.
 */
public interface ZakazDao {
    public int addZakaz(Zakaz zakaz);

    public void updateZakaz(Zakaz zakaz);

    public void removeZakaz(int id);

    public Zakaz getZakazById(int id);

    public List<Zakaz> zakazList();
}
