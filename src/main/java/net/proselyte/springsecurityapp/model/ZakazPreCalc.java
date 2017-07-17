package net.proselyte.springsecurityapp.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * Created by Vova on 28.06.2017.
 */
@Entity
@Table(name = "zakaz_pre_calc")
public class ZakazPreCalc {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "position_id")
    private int position_id;

    @Column(name = "users_username")
    private String users_username;

    @Column(name = "pre_calcState")
    private String  pre_calcState;

    @Column(name = "dateStartCalc")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateStartCalc;

    @Column(name = "dateChangeCalc")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateChangeCalc;

    @Column(name = "date_ok")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date_ok;

    @Column(name = "materialCost")
    private String materialCost;

    @Column(name = "isCostReal")
    private String isCostReal;

    @Column(name = "coment")
    private String coment;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true)
    @JoinColumn(name = "zakaz_pre_calc_id")
    private List<ZakazMaterials> materialsList;

    public ZakazPreCalc () {}

    //region get + set

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
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

    public Date getDate_ok() {
        return date_ok;
    }

    public void setDate_ok(Date date_ok) {
        this.date_ok = date_ok;
    }

    public String getMaterialCost() {
        return materialCost;
    }

    public void setMaterialCost(String materialCost) {
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

    public List<ZakazMaterials> getMaterialsList() {
        return materialsList;
    }

    public void setMaterialsList(List<ZakazMaterials> materialsList) {
        this.materialsList = materialsList;
    }

    //endregion


    @Override
    public String toString() {
        return "ZakazPreCalc{" +
                "id=" + id +
                ", position_id=" + position_id +
                ", users_username='" + users_username + '\'' +
                ", pre_calcState='" + pre_calcState + '\'' +
                ", dateStartCalc=" + dateStartCalc +
                ", dateChangeCalc=" + dateChangeCalc +
                ", date_ok=" + date_ok +
                ", materialCost='" + materialCost + '\'' +
                ", isCostReal='" + isCostReal + '\'' +
                ", coment='" + coment + '\'' +
                ", materialsList=" + materialsList +
                '}';
    }
}
