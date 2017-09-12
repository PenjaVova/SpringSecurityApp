package net.proselyte.springsecurityapp.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "zakaz_position")
public class ZakazPosition {

    private int id;
    private int zakaz_id;
    private Zakaz zakaz;
    private String positionName;
    private String vidIzdeliya;
    private String  edinIzmer;
    private float materialCount;
    private Date dateStartPos;
    private Date dateChangePos;
    private Date dateGotovPos;
    private int users_id;
    private String users_username;
    private Set<ZakazPreCalc> preCalcList;
    private String positionState;
    private float price;
    private float costMaterial;
    private float costNoMaterial;
    private String coment;

    public ZakazPosition () {}

    //region Маппинг
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public  int getId() {
        return id;
    }

    @Column(name = "zakaz_id")
    public  int getZakaz_id() {
        return zakaz_id;
    }

    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.REFRESH) //FetchType.LAZY- удаляется не только позиция, если Eager - то весь заказ
    @JoinColumn(name = "zakaz_id", insertable = false, updatable = false)
    public Zakaz getZakaz() {
        return zakaz;
    }

    @Column(name = "positionName")
    public String getPositionName() {
        return positionName;
    }

    @Column(name = "vid_izdeliya")
    public String getVidIzdeliya() {
        return vidIzdeliya;
    }

    @Column(name = "edinIzmer")
    public String getEdinIzmer() {
        return edinIzmer;
    }

    @Column(name = "materialCount")
    public float getMaterialCount() {
        return materialCount;
    }

    @Column(name = "dateStartPos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateStartPos() {
        return dateStartPos;
    }

    @Column(name = "dateChangePos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateChangePos() {
        return dateChangePos;
    }

    @Column(name = "dateGotovPos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public Date getDateGotovPos() {return dateGotovPos;}

    @Column(name = "users_id")
    public  int getUsers_id() {
        return users_id;
    }

    @Column(name = "users_username")
    public String getUsers_username() {
        return users_username;
    }

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "zakazPosition", cascade = CascadeType.ALL)
    public Set<ZakazPreCalc> getPreCalcList() {
        return preCalcList;
    }

    @Column(name = "positionState")
    public String getPositionState() {
        return positionState;
    }

    @Column(name = "price")
    public float getPrice() {
        return price;
    }

    @Column(name = "costMaterial")
    public float getCostMaterial() {
        return costMaterial;
    }

    @Column(name = "costNoMaterial")
    public float getCostNoMaterial() {
        return costNoMaterial;
    }

    @Column(name = "coment")
    public String getComent() {
        return coment;
    }

    //endregion

    @Override
    public String toString() {
        return "ZakazPosition{" +
                "id=" + id +
//                ", zakaz_id=" + zakaz_id +
                ", positionName='" + positionName + '\'' +
                ", vidIzdeliya='" + vidIzdeliya + '\'' +
                ", edinIzmer='" + edinIzmer + '\'' +
                ", materialCount=" + materialCount +
                ", dateStartPos=" + dateStartPos +
                ", dateChangePos=" + dateChangePos +
                ", dateGotovPos=" + dateGotovPos +
                ", users_id=" + users_id +
                ", users_username='" + users_username + '\'' +
                ", preCalcList=" + preCalcList +
                ", positionState='" + positionState + '\'' +
                ", price=" + price +
                ", costMaterial=" + costMaterial +
                ", costNoMaterial=" + costNoMaterial +
                ", coment='" + coment + '\'' +
                '}';
    }
    //region преобразование дат
/*   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
*    String sDate = sdf.format(new Date(System.currentTimeMillis()));
*/
//endregion
    public void setId(int id) {
        this.id = id;
    }
    public void setZakaz_id(int zakaz_id) {
        this.zakaz_id = zakaz_id;
    }
    public void setZakaz(Zakaz zakaz) {
        this.zakaz = zakaz;
    }
    public void setPositionName(String positionName) {
        this.positionName = positionName;
    }
    public void setVidIzdeliya(String vidIzdeliya) {
        this.vidIzdeliya = vidIzdeliya;
    }
    public void setEdinIzmer(String edinIzmer) {
        this.edinIzmer = edinIzmer;
    }
    public void setMaterialCount(float materialCount) {
        this.materialCount = materialCount;
    }
    public void setDateStartPos(Date dateStartPos) {
        this.dateStartPos = dateStartPos;
    }
    public void setDateChangePos(Date dateChangePos) {
        this.dateChangePos = dateChangePos;
    }
    public void setDateGotovPos(Date dateGotovPos) {this.dateGotovPos = dateGotovPos;}
    public void setUsers_id(int users_id) {
        this.users_id = users_id;
    }
    public void setUsers_username(String users_username) {
        this.users_username = users_username;
    }
    public void setPreCalcList(Set<ZakazPreCalc> preCalcList) {
        this.preCalcList = preCalcList;
    }
    public void setPositionState(String positionState) {
        this.positionState = positionState;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public void setCostMaterial(float costMaterial) {
        this.costMaterial = costMaterial;
    }
    public void setCostNoMaterial(float costNoMaterial) {
        this.costNoMaterial = costNoMaterial;
    }
    public void setComent(String coment) {
        this.coment = coment;
    }
}
