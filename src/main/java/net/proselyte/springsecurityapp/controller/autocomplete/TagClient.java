package net.proselyte.springsecurityapp.controller.autocomplete;

/**
 * Created by vova on 04.08.2017.
 */
public class TagClient {

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

    public TagClient(int id, String tagName) {
        this.id = id;
        this.tagName = tagName;
    }

}