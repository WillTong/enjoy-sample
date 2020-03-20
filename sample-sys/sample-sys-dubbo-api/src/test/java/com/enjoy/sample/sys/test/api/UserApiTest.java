package com.enjoy.sample.sys.test.api;

import com.enjoy.common.utils.MethodUtil;
import com.enjoy.sample.sys.api.UserApi;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * 用户服务测试
 * @author will
 */
public class UserApiTest extends BaseTest{
    @Autowired
    private UserApi userApi;

    @Test
    public void testGetUserInfoByIds(){
        List<Long> ids=new ArrayList<>();
        ids.add(1L);
        assertEquals("aa", MethodUtil.convertResponse(userApi.getUserInfoByIds(ids)).get(0).getUserCode());
    }
}
