package com.enjoy.sample.sys.api;

import com.enjoy.common.inf.TokenGenerator;
import com.enjoy.sample.user.service.TokenGeneratorService;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * token服务
 * @author will
 */
//@Service
public class TokenGeneratorApi implements TokenGenerator {

    @Autowired
    private TokenGeneratorService tokenGeneratorService;

    @Override
    public String generate(String name,String data, Integer expire) {
        return tokenGeneratorService.generate(name,data,expire);
    }

    @Override
    public void create(String name, String data, Integer expire, String token) {
        tokenGeneratorService.create(name,data,expire,token);
    }

    @Override
    public void refresh(String name,String token,Integer expire) {
        tokenGeneratorService.refresh(name,token,expire);
    }

    @Override
    public String parse(String name,String token) {
        return tokenGeneratorService.parse(name,token);
    }

    @Override
    public void remove(String name,String token) {
        tokenGeneratorService.remove(name,token);
    }
}
