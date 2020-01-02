package com.rong.service;

import java.util.Map;

public interface UserServiceaaa {
    // 分页查询
    public Map<String , Object> queryAll(Integer page , Integer rows);
    // 删除
    public void delete(String id);
}
