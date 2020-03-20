package com.enjoy.sample.user.biz.test;

import com.enjoy.sample.user.configure.UserBizConfig;
import com.enjoy.sample.user.service.UserInfoService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest(classes = {ApplicationTest.class,UserBizConfig.class})
@RunWith(SpringRunner.class)
@ActiveProfiles("userBizDev")
public class BaseTest {
    @Autowired
    private UserInfoService userInfoService;
}
