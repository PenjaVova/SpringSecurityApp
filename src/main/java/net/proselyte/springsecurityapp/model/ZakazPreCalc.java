package net.proselyte.springsecurityapp.model;

import org.springframework.cglib.core.GeneratorStrategy;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Vova on 28.06.2017.
 */
@Entity
@Table(name = "zakaz_pre_calc")
public class ZakazPreCalc {

/*
    public static final String SQL_FIND_ALL = "Select * from zakaz_pre_calc";
    public static final String TABLE_NAME = "zakaz_pre_calc";
    public static final String ID_COLUMN = "id";
    public static final String ZAKAZ_ID_COLUMN = "zakaz_id";
    public static final String POSITION_ID_COLUMN = "position_id";
    public static final String POSITIONNAME_COLUMN = "positionName";
    public static final String USERS_ID_COLUMN = "users_id";
    public static final String USERS_USERNAME_COLUMN = "users_username";
    public static final String PRE_CALCSTATE_COLUMN = "pre_calcState";
    public static final String DATESTARTCALC_COLUMN = "dateStartCalc";
    public static final String DATECHANGECALC = "dateChangeCalc";
    public static final String NOM_ELEM_COLUMN = "nom_elem";
    public static final String EDINIZMER_COLUMN = "edinIzmer";
    public static final String MATERIALCOUNT_COLUMN = "materialCount";
    public static final String MATERIALCOST_COLUMN  = "materialCost";
    public static final String ISCOSTREAL_COLUMN = "isCostReal";
    public static final String COMENT_COLUMN = "coment";
*/
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "zakaz_id")
    private int zakaz_id;

    @Column(name = "position_id")
        private int position_id;

    @Column(name = "positionName")
    private String positionName;

    @Column(name = "users_id")
    private int users_id;

    @Column(name = "users_username")
    private String users_username;

    @Column(name = "pre_calcState")
    private String pre_calcState;

    @Column(name = "dateStartCalc")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateStartCalc;

    @Column(name = "dateChangeCalc")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateChangeCalc;

    @Column(name = "nom_elem")
    private String nom_elem;       // табл "nomenclatura" поле "nom_elem"

    @Column(name = "edinIzmer")
    private String edinIzmer;      // выпадающий список кг / м / шт ...

    @Column(name = "materialCount")
    private float materialCount;   // кол-во материала

    @Column(name = "materialCost")
    private float materialCost;    // цена за единицу

    @Column(name = "isCostReal")
    private String isCostReal;     // цена средняя = "N" если реальная цена - проставлять "Y" при оприходывании

    @Column(name = "coment")
    private String coment;

    public ZakazPreCalc () {}

   public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getZakaz_id() {
        return zakaz_id;
    }

    public void setZakaz_id(int zakaz_id) {
        this.zakaz_id = zakaz_id;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public int getUsers_id() {
        return users_id;
    }

    public void setUsers_id(int users_id) {
        this.users_id = users_id;
    }

    public String getUsers_username() {
        return users_username;
    }

    public void setUsers_username(String users_username) {
        this.users_username = users_username;
    }

    public String getPre_calcState() {
        return pre_calcState;
    }

    public void setPre_calcState(String pre_calcState) {
        this.pre_calcState = pre_calcState;
    }

    public Date getDateStartCalc() {
        return dateStartCalc;
    }

    public void setDateStartCalc(Date dateStartCalc) {
        this.dateStartCalc = dateStartCalc;
    }

    public Date getDateChangeCalc() {
        return dateChangeCalc;
    }

    public void setDateChangeCalc(Date dateChangeCalc) {
        this.dateChangeCalc = dateChangeCalc;
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

    public float getMaterialCount() {
        return materialCount;
    }

    public void setMaterialCount(float materialCount) {
        this.materialCount = materialCount;
    }

    public float getMaterialCost() {
        return materialCost;
    }

    public void setMaterialCost(float materialCost) {
        this.materialCost = materialCost;
    }

    public String getIsCostReal() {
        return isCostReal;
    }

    public void setIsCostReal(String isCostReal) {
        this.isCostReal = isCostReal;
    }

    public String getComent() {
        return coment;
    }

    public void setComent(String coment) {
        this.coment = coment;
    }

    @Override
    public String toString() {
        return "ZakazPreCalc{" +
                "id=" + id +
                ", zakaz_id=" + zakaz_id +
                ", position_id=" + position_id +
                ", positionName='" + positionName + '\'' +
                ", users_id=" + users_id +
                ", users_username='" + users_username + '\'' +
                ", pre_calcState='" + pre_calcState + '\'' +
                ", dateStartCalc=" + dateStartCalc +
                ", dateChangeCalc=" + dateChangeCalc +
                ", nom_elem='" + nom_elem + '\'' +
                ", edinIzmer='" + edinIzmer + '\'' +
                ", materialCount=" + materialCount +
                ", materialCost=" + materialCost +
                ", isCostReal='" + isCostReal + '\'' +
                ", coment='" + coment + '\'' +
                '}';
    }

}
