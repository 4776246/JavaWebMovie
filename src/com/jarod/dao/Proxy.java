package com.jarod.dao;
import com.jarod.table.*;

import java.sql.*;
import java.util.List;

public class Proxy implements Inter{
    private Connection conn;
    private Imp dao;
    public Proxy() throws Exception {
        this.conn = new DatabaseConnection().getConn();
        dao = new Imp(conn);
    }

    @Override
    public Users findUser() throws Exception {
        return dao.findUser();
    }

    @Override
    public int updateUser(Users user) throws Exception {
        return dao.updateUser(user);
    }

    @Override
    public List<Titles> findAllTitles() throws Exception {
        return dao.findAllTitles();
    }

    @Override
    public int updateTitles(List<Titles> titles) throws Exception {
        return dao.updateTitles(titles);
    }

    @Override
    public List<Options> findAllOptions() throws Exception {
        return dao.findAllOptions();
    }

    @Override
    public int updateOptions(List<Options> options) throws Exception {
        return dao.updateOptions(options);
    }

    @Override
    public List<Jxdata> findAllJxdata() throws Exception {
        return dao.findAllJxdata();
    }

    @Override
    public int updateJxdata(List<Jxdata> jxdata) throws Exception {
        return dao.updateJxdata(jxdata);
    }


}
