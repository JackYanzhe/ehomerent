package dao;


import java.util.List;

import entity.Condition;
import entity.Order;

public interface OrderDao {
	//查询所有
	public List<Order> findAllOrders(Integer pageNo,Integer pageSize,Condition condition);
	//查询总信息数
	public int countNum(Condition condition);
	//添加订单
	public void addOrder(Order order);
	//删除订单
	public boolean deleteOrder(Integer orderId); 

	
}
