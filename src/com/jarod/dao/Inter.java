package com.jarod.dao;
import com.jarod.table.*;

import java.util.List;
import java.util.jar.JarEntry;

public interface Inter {

    public Users findUser() throws Exception;
    public int updateUser(Users user) throws Exception;

    public List<Titles> findAllTitles() throws Exception;
    public int updateTitles(List<Titles> titles) throws Exception;

    public List<Options> findAllOptions() throws Exception;
    public int updateOptions(List<Options> options) throws Exception;

    public List<Jxdata> findAllJxdata() throws Exception;
    public int updateJxdata(List<Jxdata> jxdata) throws Exception;

}
