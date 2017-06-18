package net.proselyte.springsecurityapp.controller.autocomplete;

import net.proselyte.springsecurityapp.model.Nomenclatura;

/**
 * Created by Vova on 28.05.2017.
 */
public class Tag {

    public int id;
    public String tagName;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public Tag(int id, String tagName) {
        this.id = id;
        this.tagName = tagName;
    }

}