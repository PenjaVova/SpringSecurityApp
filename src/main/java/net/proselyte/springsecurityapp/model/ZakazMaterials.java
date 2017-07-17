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
}
