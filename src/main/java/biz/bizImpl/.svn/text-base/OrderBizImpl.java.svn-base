package biz.bizImpl;

import java.util.List;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;

import dao.OrderDao;

import entity.Condition;
import entity.Order;
import biz.OrderBiz;
@Service("orderBiz")
public class OrderBizImpl implements OrderBiz {
	@Autowired
	@Qualifier("orderDao")
	private OrderDao orderDao;
	
	public OrderDao getOrderDao() {
		
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		
		this.orderDao = orderDao;
	}

	@Override
	public List<Order> findAllOrders(Integer pageNo, Integer pageSize,
			Condition condition) {
		
		return orderDao.findAllOrders(pageNo, pageSize, condition);
	}

	@Override
	public int countNum(Condition condition) {
		
		return orderDao.countNum(condition);
	}

	@Override
	public void addOrder(Order order) {
		
		orderDao.addOrder(order);
	}

	@Override
	public boolean deleteOrder(Integer orderId) {
		
		return orderDao.deleteOrder(orderId);
	}

	@Test
	public void t1() {
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderBiz orderBiz = (OrderBiz) ac.getBean("orderBiz");
		Condition condition = new Condition();
		List<Order> list = orderBiz.findAllOrders(1, 1, condition);
		for (Order order : list) {
			System.out.println(order.getOrderdate());
		}
	}
}
