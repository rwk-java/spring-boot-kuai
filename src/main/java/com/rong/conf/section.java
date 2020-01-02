package com.rong.conf;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect // 声明这个类是切面
@Component // 将切面交由工厂管理
public class section {
    @Before(value = "execution(* com.rong.service.*.* (..))")
    public void before(){
        /*System.out.println("--------进入前置通知-------");*/
    }
    @After(value = "execution(* com.rong.service.*.* (..))")
    public void after(){
      /*  System.out.println("============后置通知============");*/
    }
    @Around(value = ("execution(* com.rong.service.*.* (..))"))
    public Object around(ProceedingJoinPoint proceedingJoinPoint){
        /*System.out.println("===========前置通知============");
        Object proceed = null;
        try {
            proceed = proceedingJoinPoint.proceed();
        } catch (Throwable throwable) {
            throwable.printStackTrace();
        }
        System.out.println("===后置通知=====");*/
        return null;
    }
}
