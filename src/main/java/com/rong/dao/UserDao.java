package com.rong.dao;

import com.rong.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    // 分页查询
    List<User> queryAll(@Param("page") Integer page , @Param("rows") Integer rows);
    // 删除
    void delete(String id);
    // 查询总条数
    int count();
    // 添加数据
    void insert(User user);
}
