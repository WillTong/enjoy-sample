package com.enjoy.sample.user.test.biz;

import com.enjoy.sample.user.configure.UserBizConfig;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * 基础测试类
 * @author will
 */
@SpringBootTest(classes = {ApplicationTest.class,UserBizConfig.class})
@RunWith(SpringRunner.class)
@ActiveProfiles("userBizDev")
public class BaseTest {
}
