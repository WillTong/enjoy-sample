package com.enjoy.sample.gateway.controller;

import com.enjoy.common.inf.IRedisEnum;

public enum AuthRedis implements IRedisEnum {
    TOKEN("user:auth:token");

    private final String prefix;

    AuthRedis(String prefix){
        this.prefix=prefix;
    }

    @Override
    public String getKey(String key) {
        return String.join(":",prefix,key);
    }
}