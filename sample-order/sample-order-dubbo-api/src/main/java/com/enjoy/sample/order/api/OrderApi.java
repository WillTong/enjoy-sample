package com.enjoy.sample.order.api;

import com.enjoy.common.model.Response;
import com.enjoy.sample.order.client.OrderClient;
import com.enjoy.sample.order.model.dto.OrderManagerDto;
import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.service.OrderManagerService;
import com.enjoy.sample.sys.client.UserClient;
import com.enjoy.sample.user.model.dto.UserInfoDto;
import org.apache.dubbo.config.annotation.Reference;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import com.enjoy.common.utils.MethodUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class OrderApi implements OrderClient {

    @Autowired
    private OrderManagerService orderManagerService;
    @Reference
    private UserClient userClient;

    @Override
    public Response<List<OrderManagerDto>> searchOrderManagerList(Map<String,Object[]> dataScope){
        List<OrderInfo> orderInfoList= orderManagerService.searchOrderManagerList(dataScope);
        List<UserInfoDto> userInfoDtoList= MethodUtil.convertResponse(userClient.getUserInfoByIds(orderInfoList.stream().map(OrderInfo::getCreatedBy).collect(Collectors.toList())));
        List<OrderManagerDto> result=new ArrayList<>();
        for(OrderInfo orderInfo:orderInfoList){
            for(UserInfoDto userInfoDto:userInfoDtoList){
                if(orderInfo.getCreatedBy().equals(userInfoDto.getId())){
                    result.add(new OrderManagerDto(orderInfo,userInfoDto));
                    break;
                }
            }
        }
    }
}
