package com.jarod.table;

public class Options {
    private int option_id;
    private String option_name;
    private String opthon_value;

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
    }

    public String getOption_name() {
        return option_name;
    }

    public void setOption_name(String option_name) {
        this.option_name = option_name;
    }

    public String getOpthon_value() {
        return opthon_value;
    }

    public void setOpthon_value(String opthon_value) {
        this.opthon_value = opthon_value;
    }

    @Override
    public String toString() {
        return "options{" +
                "option_id=" + option_id +
                ", option_name='" + option_name + '\'' +
                ", opthon_value='" + opthon_value + '\'' +
                '}';
    }
}
