package com.rong.service;


import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl implements TestService {
    @Override
    public String test(String a) {
        System.out.println(a);
        return a;
    }
}
