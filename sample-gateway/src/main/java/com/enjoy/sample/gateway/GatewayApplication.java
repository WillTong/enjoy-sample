package com.enjoy.sample.gateway;

import com.enjoy.web.api.SignIntercepter;
import com.enjoy.web.interceptor.LoginIntercepter;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;

import javax.servlet.MultipartConfigElement;
import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
public class GatewayApplication {
    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class,args);
    }

    @Bean
    public LoginIntercepter loginIntercepter(){
        LoginIntercepter loginIntercepter=new LoginIntercepter(1);
        //登录登出不验证
        loginIntercepter.addWhite("/sys/user/login");
        loginIntercepter.addWhite("/sys/user/logout");
        return loginIntercepter;
    }

    @Bean
    public SignIntercepter signIntercepter(){
        Map<String,String> secretMap=new HashMap<>();
        secretMap.put("lecc","fefwefsfweffffqwee");
        SignIntercepter signIntercepter=new SignIntercepter(1,secretMap);
        signIntercepter.addProtected("/sso/third/**");
        return signIntercepter;
    }

    /**
     * 文件上传限制
     * @author: CLiang
     * @date: 2018/12/3 14:11
     */
    @Bean
    public MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        //  单个数据大小
        // KB,MB
        factory.setMaxFileSize("10240KB");
        /// 总上传数据大小
        factory.setMaxRequestSize("102400KB");
        return factory.createMultipartConfig();
    }
}
