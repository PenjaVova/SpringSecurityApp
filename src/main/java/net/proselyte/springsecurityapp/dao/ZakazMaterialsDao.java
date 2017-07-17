package net.proselyte.springsecurityapp.dao;

import net.proselyte.springsecurityapp.model.ZakazMaterials;

import java.util.List;

public interface ZakazMaterialsDao {
    public void addZakazMaterials(ZakazMaterials zakazMaterials);

    public void updateZakazMaterials(ZakazMaterials zakazMaterials);

    public void removeZakazMaterials(int id);

    public ZakazMaterials getZakazMaterialsById(int id);

    public List<ZakazMaterials> zakazMaterialsList();
}
