package com.enjoy.sample.order;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * sys启动类
 * @author will
 */
@SpringBootApplication(scanBasePackages = {"com.enjoy.sample.order.service"})
@MapperScan(basePackages = {"com.enjoy.sample.order.dao"})
public class OrderApplication {
    public static void main(String[] args) {
        SpringApplication.run(OrderApplication.class,args);
    }
}
