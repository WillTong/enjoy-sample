package com.enjoy.sample.sys;


import com.enjoy.sample.org.configure.OrgBizConfig;
import com.enjoy.sample.user.configure.UserBizConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

/**
 * sys启动类
 * @author will
 */
@SpringBootApplication
@Import({UserBizConfig.class, OrgBizConfig.class})
public class SysApplication {
    public static void main(String[] args) {
        SpringApplication.run(SysApplication.class,args);
    }
}
