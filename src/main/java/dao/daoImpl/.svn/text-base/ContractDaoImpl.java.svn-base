package dao.daoImpl;

import java.util.Date;
import java.util.List;


import org.apache.commons.lang3.time.DurationFormatUtils;
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

import dao.ContractDao;
import entity.Condition;
import entity.Contract;
import entity.House;
import entity.Order;
@Repository("contractDao")
public class ContractDaoImpl implements ContractDao{
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	//根据订单编号来查询合同信息
	@Override
	public Contract findContracts(Integer orderid) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Contract  where orderid = :orderid";
		Query query = session.createQuery(hql);
		query.setParameter("orderid", orderid);
		Contract contract = (Contract) query.uniqueResult();
		return contract;
	}
	@Test
	public void t1(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContractDao contractDao = (ContractDao) ac.getBean("contractDao");
		Contract contract = contractDao.findContracts(3);
		//System.out.println(contract.getClass());
		/*System.out.println(DurationFormatUtils.formatPeriod(new Date("2017/8/9").getTime(), 
				new Date("2017/11/9").getTime(), "M"));*/
		System.out.println(contract.getHouseinfoid()+","+contract.getLodgerrealname()+","+contract.getRenterrealname());
	}
	//修改合同信息
	@Override
	public void updateContact(Contract con) {
		Session session = sessionFactory.getCurrentSession();
		//Transaction tx = session.beginTransaction();
		System.out.println(con.getContractid()+"jinruhoutai进入后台");
		if(con.getContractid() != null){
			Contract contract = null;
			contract = (Contract) session.get(Contract.class, con.getContractid());
			if(con.getLodgerrealname() != null){
				contract.setLodgerrealname(con.getLodgerrealname());
			}
			if(con.getLodgeridcard() != null){
				contract.setLodgeridcard(con.getLodgeridcard());
			}
			if(con.getLodgertel() != null){
				contract.setLodgertel(con.getLodgertel());
			}
			if(con.getStatus() != null){
				contract.setStatus(con.getStatus());
			}
			session.saveOrUpdate(contract);
		}else {
			session.saveOrUpdate(con);
		}
	
		//tx.commit();
	}
	@Test
	public void t3(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContractDao contractDao = (ContractDao) ac.getBean("contractDao");
		Contract contract = new Contract();
		contract.setContractid(11);
		contract.setLodgerrealname("111111111");
		contractDao.updateContact(contract);
	}
	//分页查询所有的合同
	@Override
	public List<Contract> findContracts(Integer pageNo, Integer pageSize,
			Contract contract) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//查询所有信息数
	@Override
	public int countNum(Condition condition) {
		// TODO Auto-generated method stub
		return 0;
	}
	//根据房源id和合同状态来查询合同信息
	@Override
	public List<Contract> findContractByHouseId(Integer[] houseIds,Integer status) {
		Session session = sessionFactory.getCurrentSession();
		/*System.out.println("0000000000000000000000000000");
		System.out.println("0000000000000000000000000000"+houseIds.length);*/
		String hql = "from Contract where houseinfoid  in (:houseinfoid) and status = :status";
		Query query = session.createQuery(hql);
		if(houseIds != null){
			query.setParameterList("houseinfoid", houseIds);			
		}
	
		query.setParameter("status", status);
		List<Contract> cList = query.list();
		for (Contract contract : cList) {
			System.out.println(contract.getContractid()+"=-=-=-=--==-=-=-=");
		}
		return cList;
	}
	@Test
	public void t2(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContractDao contractDao = (ContractDao) ac.getBean("contractDao");
		Integer[] houseIds = {3,10,21,8};
		List<Contract> cList = contractDao.findContractByHouseId(houseIds,0);
		for (Contract contract : cList) {
			System.out.println(contract.getLodgerrealname()+"租客的真实姓名："+contract.getRenterrealname()
					+",房客的房源信息："+contract.getHouseinfoid()+",房客的合同id"+contract.getContractid());
		}
	}
	/**
	 * 根据当前合同的id查询全部合同信息
	 */
	@Override
	public Contract findContractsByContractid(Integer contractid) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Contract where contractid = :contractid";
		Query query = session.createQuery(hql);
		query.setParameter("contractid", contractid);
		Contract contract = (Contract) query.uniqueResult();
		return contract;
	}
	@Test
	public void t11(){
		ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
		ContractDao contractDao = (ContractDao) ac.getBean("contractDao");
		Contract contract = contractDao.findContractsByContractid(3);
		System.out.println(contract.getOrder().getOrderid()+","+contract.getOrder().getHouse().getHouseinfoid());
	}

}
