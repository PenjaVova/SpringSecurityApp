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
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "clients_id")
    private int clients_id;

    @Column(name = "clients_FIO")
    private String clients_FIO;

    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true)
    @JoinColumn(name = "zakaz_id")
    private List<ZakazPosition> positionList;

    @Column(name = "dateStartZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date dateStartZ;

    @Column(name = "dateChangeZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date dateChangeZ;

    @Column(name = "dateGotovZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date dateGotovZ;

    @Column(name = "dateCloseZ")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date dateCloseZ;

    @Column(name = "zakazState")
    private String zakazState;

    @Column(name = "price")
    private float price;

    @Column(name = "rpeCost")
    private float rpeCost;

    @Column(name = "postCost")
    private float postCost;

    @Column(name = "sotrFio")
    private String sotrFio;

    @Column(name = "coment")
    private String coment;

    public String getStr_position_name() {

        make_position_name();

        return str_position_name;
    }

    public void setStr_position_name(String str_position_name) {

        make_position_name();
        this.str_position_name = str_position_name;
    }
/*--------------------------------------------------------------------------------------------------------------*/
//todo 274 Глава 6. Управление постоянными объектами !бегаю по листу позиций и вывожу поле str_position_name
    @Transient
    public String str_position_name;

    @PostLoad
    @PostPersist
    @PostUpdate
    public void make_position_name() {
        if (positionList.size() > 0) {
            str_position_name = "";
            for (ZakazPosition pos : positionList) {
                String tmp =  pos.getPositionName() + " " + pos.getMaterialCount() + " " + pos.getEdinIzmer()+ "\n";
                str_position_name += tmp;
            }
        }
    }
    /*--------------------------------------------------------------------------------------------------------------*/
    public Zakaz(){}  //Конструктор без парамтров

    public int  getId()       {return id;}
    public void setId(int id){
        this.id = id;
    }

    public int getClients_id() {
        return clients_id;
    }

    public void setClients_id(int clients_id) {
        this.clients_id = clients_id;
    }

    public String getClients_FIO() {
        return clients_FIO;
    }

    public void setClients_FIO(String clients_FIO) {
        this.clients_FIO = clients_FIO;
    }

    public List<ZakazPosition> getPositionList() {
        return positionList;
    }

    public void setPositionList(List<ZakazPosition> positionList) {
        this.positionList = positionList;
    }


    public Date getDateStartZ() {
        return dateStartZ;
    }

    public void setDateStartZ(Date dateStartZ) {
        this.dateStartZ = dateStartZ;
    }

    public Date getDateChangeZ() {
        return dateChangeZ;
    }

    public void setDateChangeZ(Date dateChangeZ) {
        this.dateChangeZ = dateChangeZ;
    }

    public Date getDateGotovZ() {
        return dateGotovZ;
    }

    public void setDateGotovZ(Date dateGotovZ) {
        this.dateGotovZ = dateGotovZ;
    }

    public Date getDateCloseZ() {
        return dateCloseZ;
    }

    public void setDateCloseZ(Date dateCloseZ) {
        this.dateCloseZ = dateCloseZ;
    }

    public String getZakazState() {
        return zakazState;
    }

    public void setZakazState(String zakazState) {
        this.zakazState = zakazState;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public float getRpeCost() {
        return rpeCost;
    }

    public void setRpeCost(float rpeCost) {
        this.rpeCost = rpeCost;
    }

    public float getPostCost() {
        return postCost;
    }

    public void setPostCost(float postCost) {
        this.postCost = postCost;
    }

    public String getSotrFio() {
        return sotrFio;
    }

    public void setSotrFio(String sotrFio) {
        this.sotrFio = sotrFio;
    }

    public String getComent() {
        return coment;
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