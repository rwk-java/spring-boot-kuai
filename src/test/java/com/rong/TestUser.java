package com.rong;

import com.rong.dao.UserDao;
import com.rong.entity.User;
import com.rong.service.TestServiceImpl;
import com.rong.service.UserServiceaaa;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Map;

@RunWith(SpringRunner.class) // 测试是启动容器 加载入口类
@SpringBootTest(classes = App.class) //
public class TestUser {
    @Autowired
    private UserDao userDao;
    @Autowired
    private UserServiceaaa userServiceaaa;
    @Autowired
    private TestServiceImpl testService;
    @Test
    public void select1(){
        List<User> users = userDao.queryAll(0, 3);
        for (User user : users) {
            System.out.println(user);
        }
    }
    @Test
    public void select2(){
       /* Map<String, Object> map = userServiceaaa.queryAll(0, 3);*/
        /*Set<Map.Entry<String, Object>> entries = map.entrySet();
        for (Map.Entry<String, Object> entry : entries) {
            System.out.println(entry);
        }*/
        Map<String, Object> map = userServiceaaa.queryAll(1, 1);
        System.out.println("++++");
    }
    /*@Test
    public void select3(){
        User user = new User("2", "里能", "123123", new Date(), "123", "激活");
        userDao.insert(user);
    }*/
    @Test
    public void selec(){
        /*testService.test("aaaaaa");*/
        String a = testService.test("a");
        System.out.println(a);
    }
    @Test
    public void select1111(){
        System.out.println("github");
    }
}
