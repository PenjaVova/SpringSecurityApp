package net.proselyte.springsecurityapp.service.zakaz;

import net.proselyte.springsecurityapp.model.ZakazMaterials;

import java.util.List;

/**
 * Created by Vova on 16.07.2017.
 */
public interface ZakazMaterialsService {
    public void addZakazMaterials (ZakazMaterials zakazMaterials);

    public void updateZakazMaterials (ZakazMaterials zakazMaterials);

    public void removeZakazMaterials (int id);

    public ZakazMaterials getZakazMaterials (int id);

    public List<ZakazMaterials> ZakazMaterialList();
}
