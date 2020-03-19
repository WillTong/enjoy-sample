package com.enjoy.sample.order.api;

import com.enjoy.common.model.Response;
import com.enjoy.common.utils.MethodUtil;
import com.enjoy.sample.order.client.OrderClient;
import com.enjoy.sample.order.model.dto.OrderManagerDto;
import com.enjoy.sample.order.model.entity.OrderInfo;
import com.enjoy.sample.order.service.OrderManagerService;
import com.enjoy.sample.sys.client.UserClient;
import com.enjoy.sample.user.model.dto.UserInfoDto;
import org.apache.dubbo.config.annotation.Reference;
import org.apache.dubbo.config.annotation.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class OrderApi implements OrderClient {

    @Autowired
    private OrderManagerService orderManagerService;
    @Reference(check = false)
    private UserClient userClient;

    @Override
    public Response<List<OrderManagerDto>> searchOrderManagerList(Map<String,Object[]> dataScope){
        List<OrderInfo> orderInfoList= orderManagerService.searchOrderManagerList(dataScope);
        List<UserInfoDto> userInfoDtoList= MethodUtil.convertResponse(userClient.getUserInfoByIds(orderInfoList.stream().map(OrderInfo::getCreatedBy).collect(Collectors.toList())));
        List<OrderManagerDto> result=new ArrayList<>();
        for(OrderInfo orderInfo:orderInfoList){
            for(UserInfoDto userInfoDto:userInfoDtoList)    {
                if(orderInfo.getCreatedBy().equals(userInfoDto.getId())){
                    result.add(new OrderManagerDto(orderInfo,userInfoDto));
                    break;
                }
            }
        }
        return Response.buildResult(result);
    }

    @Override
    public Response<String> addOrder(OrderInfo orderInfo, Long suId){
        orderManagerService.addOrder(orderInfo,suId);
        return Response.buildResult("下订单成功！");
    }

    @Override
    public Response<String> deleteOrder(Long orderId, Long suId){
        orderManagerService.deleteOrder(orderId,suId);
        return Response.buildResult("删除订单成功！");
    }

    @Override
    public Response<String> editOrder(OrderInfo orderInfo, Long suId){
        orderManagerService.editOrder(orderInfo,suId);
        return Response.buildResult("修改订单成功！");
    }
}
