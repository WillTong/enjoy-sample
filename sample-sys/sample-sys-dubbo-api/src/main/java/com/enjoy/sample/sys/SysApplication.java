package com.enjoy.sample.sys;


import com.enjoy.sample.sys.configure.OrgDataSourceConfig;
import com.enjoy.sample.sys.configure.UserDataSourceConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

/**
 * sys启动类
 * @author will
 */
@SpringBootApplication(scanBasePackages = {"com.enjoy.sample.user.service","com.enjoy.sample.org.service"})
@Import({UserDataSourceConfig.class, OrgDataSourceConfig.class})
public class SysApplication {
    public static void main(String[] args) {
        SpringApplication.run(SysApplication.class,args);
    }
}
