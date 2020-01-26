package com.jarod.table;

public class Titles {
    private int id;
    private String title_name;
    private String title_url;

    public Titles(int id, String title_name, String title_url) {
        this.id = id;
        this.title_name = title_name;
        this.title_url = title_url;
    }

    public Titles(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle_name() {
        return title_name;
    }

    public void setTitle_name(String title_name) {
        this.title_name = title_name;
    }

    public String getTitle_url() {
        return title_url;
    }

    public void setTitle_url(String title_url) {
        this.title_url = title_url;
    }

    @Override
    public String toString() {
        return "titles{" +
                "id=" + id +
                ", title_name='" + title_name + '\'' +
                ", title_url='" + title_url + '\'' +
                '}';
    }
}
