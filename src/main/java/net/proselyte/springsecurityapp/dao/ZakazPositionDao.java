package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazPosition;

import java.util.List;

/**
 * Created by Vova on 15.07.2017.
 */
public interface ZakazPositionDao {
    public void addZakazPosition(ZakazPosition zakazPosition);

    public void updateZakazPosition(ZakazPosition zakazPosition);

    public void removeZakazPosition(int id);

    public ZakazPosition getZakazPositionById(int id);

    public List<ZakazPosition> ZakazPositionList();
}
