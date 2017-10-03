package net.proselyte.springsecurityapp.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;

/** * Created by vova on 22.09.2017. */
@Entity
@Table (name = "employee")
public class Employee {

    private int id;
    private String fio;
    private String posit;
    private String address;
    private String phone;
    private String state;
    private String familiia;
    private String name;
    private String otchestvo;
    private String birthday;
    private String email;
    private String comment;
    private String isp_obiaz;

    public Employee() {}

    //region Get - МАПИНГ
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    @Column(name = "fio")
    public String getFio() {
        return fio;
    }

    @Column(name = "position")
    public String getPosit() {
        return posit;
    }

    @Column(name = "Address")
    public String getAddress() {
        return address;
    }

    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    @Column(name = "state")
    public String getState() {
        return state;
    }

    @Column(name = "familiia")
    public String getFamiliia() {
        return familiia;
    }

    @Column(name = "name")
    public String getName() {
        return name;
    }

    @Column(name = "otchestvo")
    public String getOtchestvo() {
        return otchestvo;
    }

    @Column(name = "birthday")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    public String getBirthday() {
        return birthday;
    }

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    @Column(name = "comment")
    public String getComment() {
        return comment;
    }

    @Column(name = "isp_obiaz")
    public String getIsp_obiaz() {
        return isp_obiaz;
    }
    //endregion

    //region Set
    public void setId(int id) {
        this.id = id;
    }
    public void setFio(String fio) {
        this.fio = fio;
    }
    public void setPosit(String posit) {
        this.posit = posit;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public void setState(String state) {
        this.state = state;
    }
    public void setFamiliia(String familiia) {
        this.familiia = familiia;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setOtchestvo(String otchestvo) {
        this.otchestvo = otchestvo;
    }
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    public void setIsp_obiaz(String isp_obiaz) {
        this.isp_obiaz = isp_obiaz;
    }
    //endregion

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", fio='" + fio + '\'' +
                ", posit='" + posit + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", state='" + state + '\'' +
                ", familiia='" + familiia + '\'' +
                ", name='" + name + '\'' +
                ", otchestvo='" + otchestvo + '\'' +
                ", birthday='" + birthday + '\'' +
                ", email='" + email + '\'' +
                ", comment='" + comment + '\'' +
                ", isp_obiaz='" + isp_obiaz + '\'' +
                '}';
    }
}