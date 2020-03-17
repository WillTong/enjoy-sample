package com.enjoy.example.sys.redis;

import com.enjoy.common.inf.IRedisEnum;

public enum AuthRedis implements IRedisEnum {
    TOKEN("sys:auth:token");

    private final String prefix;

    AuthRedis(String prefix){
        this.prefix=prefix;
    }

    @Override
    public String getKey(String key) {
        return String.join(":",prefix,key);
    }
}