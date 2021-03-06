package com.adroit.collegequera.dao;

import java.util.List;

public interface BaseDao<T> 
{
    boolean save(T ob);
    
    boolean update(T ob);
    
    List<T> list();
    
    T get(int id);
}
