package net.proselyte.springsecurityapp.model;

import java.util.Date;
import java.util.List;

/**
 * Created by Vova on 28.06.2017.
 */
public class ZakazPosition {
/*   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
*    String sDate = sdf.format(new Date(System.currentTimeMillis()));
*/
    private int id;
    private int zakaz_id;
    private String positionName;
    private Date dateStartPos; // TODO: 28.06.2017 фотмат поля может быть нужно поменять на SimpleDateFormat или DateFormat
    private Date dateChangePos;
    private int users_id;
    private String users_username;
    private List<ZakazPreCalc> preCalcList;
    private float price;
    private float costMaterial;
    private float costNoMaterial;
    private String coment;
}
