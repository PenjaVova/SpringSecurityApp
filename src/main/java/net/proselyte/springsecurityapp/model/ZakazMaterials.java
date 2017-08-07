package net.proselyte.springsecurityapp.model;

import javax.persistence.*;

/**
 * Created by Vova on 15.07.2017.
 */
@Entity
@Table (name = "zakaz_materials")
public class ZakazMaterials {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "nom_elem")
    private String nom_elem;

    @Column(name = "edinIzmer")
    private String edinIzmer;

    @Column(name = "materialCount")
    private Float materialCount;

    @Column(name = "materialCost")
    private Float materialCost;

    @Column(name = "zakaz_pre_calc_id")
    private int zakaz_pre_calc_id;

    /*--************************************************************/
//todo 274 Глава 6. Управление постоянными объектами !бегаю по листу позиций и вывожу поле str_position_name
    @Transient
    public float cost;

    @PostLoad
    @PostPersist
    @PostUpdate
    public void make_cost() {
        if (materialCount!=null && materialCost!=null) {
            cost = materialCount * materialCost;
        }
    }
//-------------------------------------------------------
    public float getCost() {
        make_cost();
    return cost;
    }

    public void setCost(float cost) {
        make_cost();
        this.cost = cost;
    }
    /*--************************************************************/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_elem() {
        return nom_elem;
    }

    public void setNom_elem(String nom_elem) {
        this.nom_elem = nom_elem;
    }

    public String getEdinIzmer() {
        return edinIzmer;
    }

    public void setEdinIzmer(String edinIzmer) {
        this.edinIzmer = edinIzmer;
    }

    public Float getMaterialCount() {
        return materialCount;
    }

    public void setMaterialCount(Float materialCount) {
        this.materialCount = materialCount;
    }

    public Float getMaterialCost() {
        return materialCost;
    }

    public void setMaterialCost(Float materialCost) {
        this.materialCost = materialCost;
    }

    public int getZakaz_pre_calc_id() {
        return zakaz_pre_calc_id;
    }

    public void setZakaz_pre_calc_id(int zakaz_pre_calc_id) {
        this.zakaz_pre_calc_id = zakaz_pre_calc_id;
    }
}
