package com.rong.controller;

import com.rong.entity.User;
import com.rong.service.UserServiceaaa;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserServiceaaa userServiceaaa;
    @RequestMapping("queryAll")
    @ResponseBody
    public Map<String, Object> queryAll(Integer page , Integer rows){
        Map<String, Object> map = userServiceaaa.queryAll(page, rows);
        System.out.println("----map-------"+map);
        return map;
    }
    @ResponseBody
    @RequestMapping("delete")
    public void delete(String id, User user, String oper){
        System.out.println(user);
        System.out.println(oper);
        userServiceaaa.delete(id);
    }







    @RequestMapping("upload")
    @ResponseBody
    // 文件上传
    public String upload(MultipartFile file , HttpSession session){
        // 相对路径获取绝对路径
        String path = session.getServletContext().getRealPath("/upload/img");
        // 判断文件夹是否存在
        File file1 = new File(path);
        if(!file1.exists()){
            file1.mkdirs();
        }
        // 获取文件名
        String filename = file.getOriginalFilename();
        // 文件上传需要加时间戳
        String s = new Date().getTime() + filename;
        // 将文件放置到相应的文件夹中
        try {
            file.transferTo(new File(path,s));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "上传成功";
    }
}
