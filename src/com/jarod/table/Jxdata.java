package com.jarod.table;

public class Jxdata {
    private int id;
    private String jx_name;
    private String jx_value;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getJx_name() {
        return jx_name;
    }

    public void setJx_name(String jx_name) {
        this.jx_name = jx_name;
    }

    public String getJx_value() {
        return jx_value;
    }

    public void setJx_value(String jx_value) {
        this.jx_value = jx_value;
    }

    @Override
    public String toString() {
        return "jxdata{" +
                "id=" + id +
                ", jx_name='" + jx_name + '\'' +
                ", jx_value='" + jx_value + '\'' +
                '}';
    }
}
