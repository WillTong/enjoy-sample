package com.enjoy.sample.user.test.biz;

import com.enjoy.sample.user.service.UserInfoService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * UserInfoService测试
 * @author will
 */
public class UserInfoServiceTest extends BaseTest{
    @Autowired
    private UserInfoService userInfoService;

    @Test
    public void testGetUserInfoByIds(){
        List<Long> ids=new ArrayList<>();
        ids.add(1L);
        assertEquals("aa", userInfoService.getUserInfoByIds(ids).get(0).getUserCode());
    }
}
