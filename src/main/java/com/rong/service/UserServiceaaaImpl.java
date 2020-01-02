package com.rong.service;

import com.rong.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

@Service
@Transactional
public class UserServiceaaaImpl implements UserServiceaaa {
    @Autowired
    private UserDao userDao;

    @Override
    public void delete(String id) {
        userDao.delete(id);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Map<String , Object> queryAll(Integer page , Integer rows1) {
        /*Integer row = (page-1)* rows1;
        List<User> rows = userDao.queryAll(row, rows1);
        int records = userDao.count();
        Integer total = (records % rows1 == 0) ? records / rows1 : records / rows1 +1;
        HashMap<String, Object> map = new HashMap<>();
        // 当前页 page
        map.put("page",page);
        // 总条数 records
        map.put("records",records);
        // 当前页显示数据 rows
        map.put("rows",rows);
        // 总页数 total
        map.put("total",total);*/
        return null;
    }
}
