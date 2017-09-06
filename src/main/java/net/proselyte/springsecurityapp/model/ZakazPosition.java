package net.proselyte.springsecurityapp.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "zakaz_position")
public class ZakazPosition {

    //region преобразование дат
/*   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
*    String sDate = sdf.format(new Date(System.currentTimeMillis()));
*/
//endregion
//------------------------------------------------------------
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
//------------------------------------------------------------
    @Column(name = "zakaz_id") private int zakaz_id;
    public  int getZakaz_id() {
        return zakaz_id;
    }
    public void setZakaz_id(int zakaz_id) {
        this.zakaz_id = zakaz_id;
    }
//------------------------------------------------------------



    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "zakaz_id", insertable = false, updatable = false)
    private Zakaz zakaz;

    @Column(name = "positionName")    private String positionName;
    @Column(name = "vid_izdeliya")    private String vidIzdeliya;
    @Column(name = "edinIzmer")       private String  edinIzmer;
    @Column(name = "materialCount")   private float materialCount;

    @Column(name = "dateStartPos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) private Date dateStartPos;

    @Column(name = "dateChangePos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) private Date dateChangePos;

    @Column(name = "dateGotovPos")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) private Date dateGotovPos;

    @Column(name = "users_id")        private int users_id;
    @Column(name = "users_username")  private String users_username;
//------------------------------------------------------------
    @OneToMany(fetch = FetchType.EAGER, orphanRemoval = true) // TODO: 23.07.2017 @OneToMany -> @OneToOne
    @JoinColumn(name = "position_id")
    private Set<ZakazPreCalc> preCalcList;
//------------------------------------------------------------
    @Column(name = "positionState")   private String positionState;
    @Column(name = "price")           private float price;
    @Column(name = "costMaterial")    private float costMaterial;
    @Column(name = "costNoMaterial")  private float costNoMaterial;
    @Column(name = "coment")          private String coment;

    public ZakazPosition () {}

    //region Геттеры и сеттеры
    public  int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }



    public String getPositionName() {
        return positionName;
    }
    public   void setPositionName(String positionName) {
        this.positionName = positionName;
    }

    public String getVidIzdeliya() {
        return vidIzdeliya;
    }
    public void setVidIzdeliya(String vidIzdeliya) {
        this.vidIzdeliya = vidIzdeliya;
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

    public Date getDateStartPos() {
        return dateStartPos;
    }
    public void setDateStartPos(Date dateStartPos) {
        this.dateStartPos = dateStartPos;
    }

    public Date getDateChangePos() {
        return dateChangePos;
    }
    public void setDateChangePos(Date dateChangePos) {
        this.dateChangePos = dateChangePos;
    }

    public Date getDateGotovPos() {return dateGotovPos;}
    public void setDateGotovPos(Date dateGotovPos) {this.dateGotovPos = dateGotovPos;}

    public  int getUsers_id() {
        return users_id;
    }
    public void setUsers_id(int users_id) {
        this.users_id = users_id;
    }

    public String getUsers_username() {
        return users_username;
    }
    public   void setUsers_username(String users_username) {
        this.users_username = users_username;
    }

    public Set<ZakazPreCalc> getPreCalcList() {
        return preCalcList;
    }
    public void setPreCalcList(Set<ZakazPreCalc> preCalcList) {
        this.preCalcList = preCalcList;
    }

    public String getPositionState() {
        return positionState;
    }
    public void   setPositionState(String positionState) {
        this.positionState = positionState;
    }

    public float getPrice() {
        return price;
    }
    public void  setPrice(float price) {
        this.price = price;
    }

    public float getCostMaterial() {
        return costMaterial;
    }
    public void  setCostMaterial(float costMaterial) {
        this.costMaterial = costMaterial;
    }

    public float getCostNoMaterial() {
        return costNoMaterial;
    }
    public void  setCostNoMaterial(float costNoMaterial) {
        this.costNoMaterial = costNoMaterial;
    }

    public String getComent() {
        return coment;
    }
    public void   setComent(String coment) {
        this.coment = coment;
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

    public Zakaz getZakaz() {
        return zakaz;
    }

    public void setZakaz(Zakaz zakaz) {
        this.zakaz = zakaz;
    }
}
