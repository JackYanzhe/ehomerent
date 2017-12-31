package dao.daoImpl;


import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;

import util.DateUtil;
import util.HibernateUtil;
import util.PageUtil;

import dao.OrderDao;
import entity.Condition;
import entity.Contract;
import entity.House;
import entity.Order;
@Repository("orderDao")
public class OrderDaoImpl implements OrderDao {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/**
	 * 查询所有的订单
	 */
	@Override
	public List<Order> findAllOrders(Integer pageNo,Integer pageSize,Condition condition) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Order where 1=1 ";
		if(condition.getPayStatus()!=null){
			hql += "  and orderStatus = :orderStatus";
		}
		if(condition.getUserId()!=null){
			hql += "   and userId = :userId";
		}
		hql += "  order by orderdate desc";
		Query query = session.createQuery(hql);
		if(condition.getPayStatus()!=null){
			query.setParameter("orderStatus", condition.getPayStatus());
		}
		if(condition.getUserId()!=null){
			query.setParameter("userId", condition.getUserId());
		}
		List<Order> list = query.setFirstResult(pageSize*(pageNo-1))
				.setMaxResults(pageSize).list();
			return list;
		}
	/**
	 * 测试查询分页
	 */
	@Test
	public void t1(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderDao orderDao = (OrderDao) ac.getBean("orderDao");
		
		
		Condition condition = new Condition();
		condition.setPayStatus(0);
		condition.setUserId(2);
		List<Order> oList = orderDao.findAllOrders(1, 10,condition);
		System.out.println(oList.size());
		for (Order order : oList) {
			System.out.println("==============订单编号:"+order.getOrderid()
					+"房源编号:"+order.getHouse().getHouseinfoid()
					+"户型:"+order.getHouse().getHousetype()+"付款方式:"+order.getHouse().getPaytype()
					+"地址："+order.getHouse().getHouseadress()+","+order.getOrderdate()+",月租"+order.getHouse().getMonthpay());
		}
		
	}
	
	/**
	 * 查询信息总数
	 */
	@Override
	public int countNum(Condition condition) {
		Session session = sessionFactory.getCurrentSession();
		String hql = " select count(*) from Order where 1=1 ";
		if(condition.getPayStatus()!=null){
			hql+="   and orderStatus = :orderStatus";
		}
		Query query = session.createQuery(hql);
		if(condition.getPayStatus()!=null){
			query.setParameter("orderStatus", condition.getPayStatus());
		}
		int num = Integer.valueOf(query.uniqueResult().toString());
		return num;
	}
	@Test
	public void t2(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderDao orderDao = (OrderDao) ac.getBean("orderDao");
		
		Condition condition = new Condition();
		int num = orderDao.countNum(condition);
		System.out.println(num);
	}
	/**
	 * 增加订单,更改订单状态
	 */
	@Override
	public void addOrder(Order o) {
		Session session = sessionFactory.getCurrentSession();
		//Transaction tx  =  session.beginTransaction();
		
		if(o.getOrderid()!=null){
			Order order = null;
			order = (Order) session.get(Order.class, o.getOrderid());
			if(o.getTotalprice()!=null){
				order.setTotalprice(o.getTotalprice());
			}
			if(o.getOrderstatus()!=null){
				order.setOrderstatus(o.getOrderstatus());
			}
			if(o.getRenttime()!=null){
				order.setRenttime(o.getRenttime());
			}
			session.saveOrUpdate(order);
			
		}else {
			session.saveOrUpdate(o);
		}
		//tx.commit();
		
	}
	@Test
	public void t3(){
		ApplicationContext ac  = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderDao orderDao = (OrderDao) ac.getBean("orderDao");
	
		Order order = new Order(5, new Contract(1), new House(12, "讲究卫生", "几时入住"),900.00*3 ,
				1, DateUtil.StringToDate("2017-7-7"), 3);
		 orderDao.addOrder(order);	
	}
	/**
	 * 删除订单
	 */
	@Override
	public boolean deleteOrder(Integer orderId) {
		Session session = sessionFactory.getCurrentSession();
		//Transaction tx = session.beginTransaction();
		//System.out.println("===========dgtdf=======");
		try{
		    //执行删除语句
			Order order = (Order) session.load(Order.class, orderId);
			session.delete(order);
			//System.out.println("==================");
			//tx.commit();
		    return true;
		}catch(RuntimeException e){
		    return false;
		}
	}
	@Test
	public void t4(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		OrderDao orderDao = (OrderDao) ac.getBean("orderDao");
		
		boolean f = orderDao.deleteOrder(2);
		
		if(f){
			System.out.println("删除成功!!");
		}else{
			System.out.println("删除不成功!!");
		}
	}
	
}
