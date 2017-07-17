package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.model.ZakazPosition;

import java.util.List;

/**
 * Created by Vova on 16.07.2017.
 */
public interface ZakazPositionService {
    public void addZakazPosition (ZakazPosition zakazPosition);

    public void updateZakazPosition (ZakazPosition zakazPosition);

    public void removeZakazPosition (int id);

    public ZakazPosition getZakazPosition (int id);

    public List<ZakazPosition> zakazPositionListL();
}
