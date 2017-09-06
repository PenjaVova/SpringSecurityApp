package net.proselyte.springsecurityapp.model;

import javax.persistence.*;

@Entity
@Table(name = "clients")
public class Client {

    private int id;
    private String fio;
    private String phone;
    private String inn;
    private String fiz_ur;
    private String acc;
    private String pasp;
    private String addr;
    private String koment;

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    @Column(name = "FIO")
    public String getFio() {
        return fio;
    }

    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    @Column(name = "INN")
    public String getInn() {
        return inn;
    }

    @Column(name = "fiz_ur")
    public String getFiz_ur() {
        return fiz_ur;
    }

    @Column(name = "ACC")
    public String getAcc() {
        return acc;
    }
    @Column(name = "pasp")
    public String getPasp() {
        return pasp;
    }

    @Column(name = "addr")
    public String getAddr() {
        return addr;
    }

    @Column(name = "koment")
    public String getKoment() {
        return koment;
    }

    public Client() {} //пустой конструктор

    public void setId(int id) {
        this.id = id;
    }
    public void setFio(String fio) {
        this.fio = fio;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public void setInn(String inn) {
        this.inn = inn;
    }
    public void setFiz_ur(String fiz_ur) {
        this.fiz_ur = fiz_ur;
    }
    public void setAcc(String acc) {
        this.acc = acc;
    }
    public void setPasp(String pasp) {
        this.pasp = pasp;
    }
    public void setAddr(String addr) {
        this.addr = addr;
    }
    public void setKoment(String koment) {
        this.koment = koment;
    }

    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", fio='" + fio + '\'' +
                ", phone='" + phone + '\'' +
                ", inn='" + inn + '\'' +
                ", fiz_ur='" + fiz_ur + '\'' +
                ", acc='" + acc + '\'' +
                ", pasp='" + pasp + '\'' +
                ", addr='" + addr + '\'' +
                ", koment='" + koment + '\'' +
                '}';
    }
}
