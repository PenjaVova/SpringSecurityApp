package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazPreCalc;

import java.util.List;

/**
 * Created by Vova on 30.06.2017.
 */
public interface ZakazPreCalcDao {

    public void addZakazPreCalc(ZakazPreCalc zakazPreCalc);

    public void updateZakazPreCalc(ZakazPreCalc zakazPreCalc);

    public void removeZakazPreCalc(int id);

    public ZakazPreCalc getZakazPreCalcById(int id);

    public List<ZakazPreCalc> listZakazPreCalc();
}
