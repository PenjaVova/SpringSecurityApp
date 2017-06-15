package net.proselyte.springsecurityapp.model;

import javax.persistence.*;

@Entity
@Table(name = "clients")
public class Client {

    public Client() {} //пустой конструктор

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "FIO")
    private String fio;

    @Column(name = "phone")
    private String phone;

    @Column(name = "INN")
    private String inn;

    @Column(name = "fiz_ur")
    private String fiz_ur;

    @Column(name = "ACC")
    private String acc;

    @Column(name = "pasp")
    private String pasp;

    @Column(name = "addr")
    private String addr;

    @Column(name = "koment")
    private String koment;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getInn() {
        return inn;
    }

    public void setInn(String inn) {
        this.inn = inn;
    }

    public String getFiz_ur() {
        return fiz_ur;
    }

    public void setFiz_ur(String fiz_ur) {
        this.fiz_ur = fiz_ur;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public String getPasp() {
        return pasp;
    }

    public void setPasp(String pasp) {
        this.pasp = pasp;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getKoment() {
        return koment;
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
