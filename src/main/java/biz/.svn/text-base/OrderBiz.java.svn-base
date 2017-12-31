package biz;

import java.util.List;

import org.springframework.stereotype.Service;

import entity.Condition;
import entity.Order;

public interface OrderBiz {
		//查询所有
		public List<Order> findAllOrders(Integer pageNo,Integer pageSize,Condition condition);
		//查询总信息数
		public int countNum(Condition condition);
		//添加订单
		public void addOrder(Order order);
		//删除订单
		public boolean deleteOrder(Integer orderId); 
}
