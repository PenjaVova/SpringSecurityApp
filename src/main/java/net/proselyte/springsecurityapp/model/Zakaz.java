package net.proselyte.springsecurityapp.model;

import javax.persistence.Entity;
import java.util.Date;
import java.util.List;

/**
 * Created by Vova on 28.06.2017.
 */
public class Zakaz {
    private int id;
    private int clients_id;
    private String clients_FIO;
    private List<ZakazPosition> positionList;
    private Date dateChangeZ; // TODO: 28.06.2017 фотмат поля может быть нужно поменять на SimpleDateFormat или DateFormat
    private Date dateStartZ;
    private String zakazState;
    private int users_id;
    private String users_username;
    private float price;
    private float cost;
    private String coment;
    private String sotrFio;
}
