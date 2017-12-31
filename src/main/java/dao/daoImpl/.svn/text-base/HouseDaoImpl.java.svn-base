package dao.daoImpl;

import java.util.List;

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
import org.springframework.transaction.annotation.Transactional;

import util.HibernateUtil;

import dao.HouseDao;

import dao.OrderDao;

import entity.Condition;

import entity.Furniture;

import entity.Charge;
import entity.House;
import entity.Order;
import entity.Pape;
import entity.User;

@Repository("houseDao")
public class HouseDaoImpl implements HouseDao {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	/**
	 * 根据房源id查询房源详情信息
	 */
	@Override
	public House findHouseDetail(int id) {
		Session session = sessionFactory.getCurrentSession();
		House house = (House) session.get(House.class, id);
		return house;
	}

	/**
	 * 添加房源信息
	 */
	@Override
	public int addHouse(House house) {
		Session session = sessionFactory.getCurrentSession();
		int num = (Integer) session.save(house);
		return num;
	}

	/**
	 * 查询房东发布的房源
	 */
	@Override
	public Pape<House> findIssuanceHouse(int id, int pageNo, int pageSize,
			House house) {
		Pape<House> page = new Pape<House>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		int rnum = this.countNum(id,house);
		page.setRowSize(rnum);
		
		Session session = sessionFactory.getCurrentSession();
		String hql = "from House where user.userid =:id";
		if (house.getHousingtime() != null) {
			hql += " and houseStatus = :houseStatus";
		}
		Query query = session.createQuery(hql);
		if (house.getHousingtime() != null) {
			query.setParameter("houseStatus", house.getHousingtime());
		}
		query.setParameter("id", id);
		List<House> list = query.setFirstResult(pageSize * (pageNo - 1))
				.setMaxResults(pageSize).list();
		page.setPageList(list);
		return page;
	}

	/**
	 * 查询总信息数
	 */
	@Override
	public int countNum(int id, House house) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(*) from House where user.userid =:id";
		if (house.getHousingtime() != null) {
			hql += " and houseStatus = :houseStatus";
		}
		Query query = session.createQuery(hql);
		if (house.getHousingtime() != null) {
			query.setParameter("houseStatus", house.getHousingtime());
		}
		query.setParameter("id", id);
		int num = Integer.valueOf(query.uniqueResult().toString());
		return num;
	}

	/**
	 * 删除房源信息
	 */
	@Override
	public boolean deleteHouse(House house, int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			// 执行删除语句
			if (house.getHouseinfoid() != null) {
				House house1 = (House) session.load(House.class,
						house.getHouseinfoid());
				session.delete(house1);
			} else {
				String hql = "from House where user.userid =:id";
				Query query = session.createQuery(hql);
				query.setParameter("id", id);
				List<House> list = query.list();
				for (House house2 : list) {
					session.delete(house2);
				}

			}
			return true;
		} catch (RuntimeException e) {
			return false;
		}
	}

	/**
	 * 修改房源信息
	 */
	@Override
	public int updateHouse(House house) {
		Session session = sessionFactory.getCurrentSession();
		if (house.getFurniture() != null) {
			session.save(house.getFurniture());
		}
		if (house.getCollection() != null) {
			session.save(house.getCollection());
		}
		if (house.getHouseimg() != null) {
			session.save(house.getHouseimg());
		}
		if (house.getElectric() != null) {
			session.save(house.getElectric());
		}
		if (house.getCharge() != null) {
			session.save(house.getCharge());
		}

		House house2 = (House) session.merge(house);

		int num = house2.getHouseinfoid();
		return num;
	}

	/**
	 * 根据用户id查询房源信息
	 */
	@Override
	public List<House> findHousesByuserId(int userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from House where userid = :userid";
		Query query = session.createQuery(hql);
		query.setParameter("userid", userId);
		List<House> hlist = query.list();
		return hlist;
	}
	
	/**
	 * 测试添加房源信息
	 */
	@Test
	public void T1() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		HouseDao houseDao = (HouseDao) ac.getBean("houseDao");
		
		House house = new House();
		house.setHouseadress("幸福花园11");
		house.setHousetype("6");
		house.setHouseinfoid(7);
		house.setCharge(new Charge(1));
		house.setFloor("1");
		house.setLandlordwordsent("asdfghjm");
		house.setLandlordask("wertyui");
		
		int num = (Integer) houseDao.addHouse(house);
		System.out.println(num);
	}
	
	/**
	 * 测试查询总信息数
	 */
	@Test
	public void t2() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		HouseDao houseDao = (HouseDao) ac.getBean("houseDao");
		
		House house = new House();
		int num = houseDao.countNum(1001,house);

		System.out.println(num);

	}
	
	/**
	 * 测试删除房源
	 */
	@Test
	public void t3() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		HouseDao houseDao = (HouseDao) ac.getBean("houseDao");
		
		House house = new House();
		house.setHouseinfoid(33);
		boolean a = houseDao.deleteHouse(house, 0);
		if (a) {
			System.out.println("cg");
		} else {
			System.out.println("sb");
		}
	}
	
	/**
	 * 测试修改房源信息
	 */
	@Test
	public void t4() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		HouseDao houseDao = (HouseDao) ac.getBean("houseDao");
		
		House house = houseDao.findHouseDetail(59);
		
		house.setHouseinfoid(90);
		house.setLocation("郑州市高新区22222222");
		
		Furniture furn = new Furniture();
		furn.setBed(1);
		house.setFurniture(furn);
		
		int num = houseDao.updateHouse(house);
		System.out.println("**********" + num);
	}
	
	/**
	 * 测试根据用户id查询房源
	 */
	@Test
	public void t5() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		HouseDao houseDao = (HouseDao) ac.getBean("houseDao");
		
		List<House> houses = houseDao.findHousesByuserId(2);
		for (House house : houses) {
			System.out.println(house.getHouseinfoid() + ",用户id"
					+ house.getUser().getUserid());
		}
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
