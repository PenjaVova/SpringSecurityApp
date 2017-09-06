package net.proselyte.springsecurityapp.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by Vova on 28.06.2017.
 */
@Entity
@Table (name = "zakaz")
public class Zakaz {

    private int id;
    private int clients_id;
    public String str_position_name;
    private String clients_FIO;
    private List<ZakazPosition> positionList;
    private Date dateStartZ;
    private Date dateChangeZ;
    private Date dateGotovZ;
    private Date dateCloseZ;
    private String zakazState;
    private float price;
    private float rpeCost;
    private float postCost;
    private String sotrFio;
    private String coment;

/*--------------------------------------------------------------------------------------------------------------*/
// 274 Глава 6. Управление постоянными объектами !бегаю по листу позиций и вывожу поле str_position_name
    @PostLoad
    @PostPersist
    @PostUpdate
    public void make_position_name() {
        if (positionList.size() > 0) {
            str_position_name = "";
            for (ZakazPosition pos : positionList) {
                String tmp =  pos.getPositionName() + " " + pos.getMaterialCount() + " " + pos.getEdinIzmer()+ "<br>";
                str_position_name += tmp;
            }
        }
    }
/*--------------------------------------------------------------------------------------------------------------*/
    public Zakaz(){}  //Конструктор без парамтров
    //region Мапинг через GET-теры
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int  getId()       {return id;}

    @Column(name = "clients_id")
    public int getClients_id() {
        return clients_id;
    }

    @Transient
    public String getStr_position_name() {

        make_position_name();

        return str_position_name;
    }

    @Column(name = "clients_FIO")
    public String getClients_FIO() {
        return clients_FIO;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "zakaz", cascade = CascadeType.ALL)
    public List<ZakazPosition> getPositionList() {
        return positionList;
    }
    @Column(name = "dateStartZ") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateStartZ() {
        return dateStartZ;
    }
    @Column(name = "dateChangeZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateChangeZ() {
        return dateChangeZ;
    }
    @Column(name = "dateGotovZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateGotovZ() {
        return dateGotovZ;
    }
    @Column(name = "dateCloseZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateCloseZ() {
        return dateCloseZ;
    }
    @Column(name = "zakazState")
    public String getZakazState() {
        return zakazState;
    }
    @Column(name = "price")
    public float getPrice() {
        return price;
    }
    @Column(name = "rpeCost")
    public float getRpeCost() {
        return rpeCost;
    }
    @Column(name = "postCost")
    public float getPostCost() {
        return postCost;
    }
    @Column(name = "sotrFio")
    public String getSotrFio() {
        return sotrFio;
    }
    @Column(name = "coment")
    public String getComent() {
        return coment;
    }
    //endregion
    public void setId(int id){
        this.id = id;
    }
    public void setClients_id(int clients_id) {
        this.clients_id = clients_id;
    }
    public void setStr_position_name(String str_position_name) {
        make_position_name();
        this.str_position_name = str_position_name;
    }
    public void setClients_FIO(String clients_FIO) {
        this.clients_FIO = clients_FIO;
    }
    public void setPositionList(List<ZakazPosition> positionList) {
        this.positionList = positionList;
    }
    public void setDateStartZ(Date dateStartZ) {
        this.dateStartZ = dateStartZ;
    }
    public void setDateChangeZ(Date dateChangeZ) {
        this.dateChangeZ = dateChangeZ;
    }
    public void setDateGotovZ(Date dateGotovZ) {
        this.dateGotovZ = dateGotovZ;
    }
    public void setDateCloseZ(Date dateCloseZ) {
        this.dateCloseZ = dateCloseZ;
    }
    public void setZakazState(String zakazState) {
        this.zakazState = zakazState;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public void setRpeCost(float rpeCost) {
        this.rpeCost = rpeCost;
    }
    public void setPostCost(float postCost) {
        this.postCost = postCost;
    }
    public void setSotrFio(String sotrFio) {
        this.sotrFio = sotrFio;
    }
    public void setComent(String coment) {
        this.coment = coment;
    }


    @Override
    public String toString() {
        return "Zakaz{" +
                "id=" + id +
                ", clients_id=" + clients_id +
                ", clients_FIO='" + clients_FIO + '\'' +
                ", positionList=" + positionList +
                ", dateStartZ=" + dateStartZ +
                ", dateChangeZ=" + dateChangeZ +
                ", dateGotovZ=" + dateGotovZ +
                ", dateCloseZ=" + dateCloseZ +
                ", zakazState='" + zakazState + '\'' +
                ", price=" + price +
                ", rpeCost=" + rpeCost +
                ", postCost=" + postCost +
                ", sotrFio='" + sotrFio + '\'' +
                ", coment='" + coment + '\'' +
                '}';
    }
}