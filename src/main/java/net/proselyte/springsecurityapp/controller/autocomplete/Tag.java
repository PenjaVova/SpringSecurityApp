package net.proselyte.springsecurityapp.controller.autocomplete;

/**
 * Created by Vova on 28.05.2017.
 */
public class Tag {
        public int id;
        public String tagName;

        public Tag (){};

        public Tag(int id, String tagName) {
            this.id = id;
            this.tagName = tagName;
        }

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

    @Override
    public String toString() {
        return "Tag{" +
                "id=" + id +
                ", tagName='" + tagName + '\'' +
                '}';
    }
}