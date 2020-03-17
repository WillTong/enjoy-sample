package com.enjoy.sample.user.service;

public interface TokenGeneratorService {
    /**
     * 创建token
     * @param name 存储名
     * @param data 数据
     * @param expire 过期时间 单位秒
     * @return
     */
    String generate(String name,String data, Integer expire);


    /**
     * 使用指定的token创建
     * @param name 存储名
     * @param data 数据
     * @param expire 过期时间 单位秒
     * @param token 指定的toekn值
     * @return
     */
    void create(String name,String data, Integer expire,String token);

    /**
     * 刷新token
     * @param name 存储名
     * @param token token
     * @param expire 过期时间
     */
    void refresh(String name, String token, Integer expire);

    /**
     * 解析token
     * @param name 存储名
     * @param token
     * @return
     */
    String parse(String name, String token);

    /**
     * 删除token
     * @param name 存储名
     * @param token
     */
    void remove(String name, String token);
}
