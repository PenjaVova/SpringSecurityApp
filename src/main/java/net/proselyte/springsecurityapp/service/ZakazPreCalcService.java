package net.proselyte.springsecurityapp.service;

import net.proselyte.springsecurityapp.model.ZakazPreCalc;
import java.util.List;

public interface ZakazPreCalcService {
    public void addZakazPreCalc (ZakazPreCalc zakazPreCalc);

    public void updateZakazPreCalc (ZakazPreCalc zakazPreCalc);

    public void removeZakazPreCalc (int id);

    public ZakazPreCalc getZakazPreCalc (int id);

    public List<ZakazPreCalc> zakazPreCalcList();
}
