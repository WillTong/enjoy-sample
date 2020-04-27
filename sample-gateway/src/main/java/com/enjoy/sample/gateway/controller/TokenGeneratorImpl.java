package com.enjoy.sample.gateway.controller;

import com.enjoy.common.inf.TokenGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import java.util.UUID;
import java.util.concurrent.TimeUnit;

/**
 * token服务
 * @author will
 */
@Service
public class TokenGeneratorImpl implements TokenGenerator {

    @Autowired
    private StringRedisTemplate stringRedisTemplate;

    public String generate(String name,String data, Integer expire) {
        String token = UUID.randomUUID().toString().replace("-", "");
        stringRedisTemplate.opsForValue().set(AuthRedis.TOKEN.getKey(String.join(":",name,token)),
                data, expire, TimeUnit.SECONDS);
        return token;
    }

    public void create(String name, String data, Integer expire, String token) {
        stringRedisTemplate.opsForValue().set(AuthRedis.TOKEN.getKey(String.join(":",name,token)),
                data, expire, TimeUnit.SECONDS);
    }

    public void refresh(String name,String token,Integer expire) {
        stringRedisTemplate.expire(AuthRedis.TOKEN.getKey(String.join(":",name,token)),expire, TimeUnit.SECONDS);
    }

    public String parse(String name,String token) {
        return stringRedisTemplate.opsForValue().get(AuthRedis.TOKEN.getKey(String.join(":",name,token)));
    }

    public void remove(String name,String token) {
        stringRedisTemplate.delete(AuthRedis.TOKEN.getKey(String.join(":",name,token)));
    }
}
