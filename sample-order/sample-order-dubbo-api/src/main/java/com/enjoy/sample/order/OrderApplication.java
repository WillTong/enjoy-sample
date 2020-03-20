package com.enjoy.sample.order;


import com.enjoy.sample.order.configure.OrderBizConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

/**
 * sys启动类
 * @author will
 */
@SpringBootApplication
@Import(OrderBizConfig.class)
public class OrderApplication {
    public static void main(String[] args) {
        SpringApplication.run(OrderApplication.class,args);
    }
}
