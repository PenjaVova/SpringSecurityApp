package net.proselyte.springsecurityapp.service.zakaz;

import net.proselyte.springsecurityapp.model.Zakaz;

import java.util.List;

/**
 * Created by Vova on 16.07.2017.
 */
public interface ZakazService {
    public int addZakaz (Zakaz zakaz);

    public void updateZakaz (Zakaz zakaz);

    public void removeZakaz (int id);

    public Zakaz getZakaz (int id);

    public List<Zakaz> zakazList();
}
