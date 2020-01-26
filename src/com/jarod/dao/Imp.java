package com.jarod.dao;

import com.jarod.table.*;

import javax.swing.text.html.Option;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Imp implements Inter{
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;

    public Imp(Connection conn){
        this.conn = conn;
    }

    /**
     *  查询users表中管理员的所有信息
     * @return Users
     * @throws Exception
     */
    @Override
    public Users findUser() throws Exception{
        String sql = "select * from users";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        Users user = new Users();
        if(rs.next()){
            user.setId(rs.getInt(1));
            user.setUser_login(rs.getString(2));
            user.setUser_pass(rs.getString(3));
            user.setUser_name(rs.getString(4));
            user.setUser_qq(rs.getString(5));
        }
        rs.close();
        ps.close();
        return user;
    }

    /**
     *  更新管理员信息，固定只有一条
     * @return int
     * @throws Exception
     */
    @Override
    public int updateUser(Users user) throws Exception{
        String sql = "update users set id=?,user_login=?,user_pass=?,user_name=?,user_qq=?";
        ps = conn.prepareStatement(sql);
        ps.setInt(1,user.getId());
        ps.setString(2,user.getUser_login());
        ps.setString(3,user.getUser_pass());
        ps.setString(4,user.getUser_name());
        ps.setString(5,user.getUser_qq());
        int i = ps.executeUpdate();
        return i;
    }

    /**
     *  查找所有首页导航标题栏，以列表形式返回
     * @return List<Titles>
     * @throws Exception
     */
    @Override
    public List<Titles> findAllTitles() throws Exception {
        String sql = "select * from titles";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        List<Titles> titlesList = new ArrayList<Titles>();
        while(rs.next()){
            Titles titles = new Titles();
            titles.setId(rs.getInt(1));
            titles.setTitle_name(rs.getString(2));
            titles.setTitle_url(rs.getString(3));
            titlesList.add(titles);
        }
        return titlesList;
    }

    /**
     * 后台更新首页标题栏信息
     * @param titles
     * @return
     * @throws Exception
     */
    @Override
    public int updateTitles(List<Titles> titles) throws Exception {
        int i = 0;
        for(Titles t:titles){
            String sql="update titles set title_name=?,title_url=? where id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,t.getTitle_name());
            ps.setString(2,t.getTitle_url());
            ps.setInt(3,t.getId());
            i += ps.executeUpdate();
        }
        return i;
    }

    /**
     * 查询options表中的所有信息，即网站的所有信息
     * @return
     * @throws Exception
     */
    @Override
    public List<Options> findAllOptions() throws Exception {
        String sql = "select * from options";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        List<Options> optionsList = new ArrayList<Options>();
        while(rs.next()){
            Options options = new Options();
            options.setOption_id(rs.getInt(1));
            options.setOption_name(rs.getString(2));
            options.setOpthon_value(rs.getString(3));
            optionsList.add(options);
        }
        return optionsList;
    }

    /**
     * 更新options表中的信息，即网站标题版权等信息。
     * @param options
     * @return
     * @throws Exception
     */
    @Override
    public int updateOptions(List<Options> options) throws Exception {
        int i = 0;
        for(Options t:options){
            String sql="update options set option_value=? where option_id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,t.getOpthon_value());
            ps.setInt(2,t.getOption_id());
            i += ps.executeUpdate();
        }
        return i;
    }

    @Override
    public List<Jxdata> findAllJxdata() throws Exception {
        String sql = "select * from jxdata";
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
        List<Jxdata> jxdataList = new ArrayList<Jxdata>();
        while(rs.next()){
            Jxdata jxdata = new Jxdata();
            jxdata.setId(rs.getInt(1));
            jxdata.setJx_name(rs.getString(2));
            jxdata.setJx_value(rs.getString(3));
            jxdataList.add(jxdata);
        }
        return jxdataList;
    }

    @Override
    public int updateJxdata(List<Jxdata> jxdata) throws Exception {
        int i = 0;
        for(Jxdata t:jxdata){
            String sql="update jxdata set jx_value=? where id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,t.getJx_value());
            ps.setInt(2,t.getId());
            i += ps.executeUpdate();
        }
        return i;
    }


}
