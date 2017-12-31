package dao.daoImpl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Repository;

import util.HibernateUtil;



import dao.SubscribeDao;
import entity.House;
import entity.Subscribe;
@Repository("subscribeDao")
public class SubscribeDaoImpl implements SubscribeDao {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
    /**
     * 保存用户订阅房源信息
     */
	@Override
	public long saveSubscribeInfo(Subscribe subscribe) {
		System.out.println("进入用户订阅保存房源");
		long subNum= (Long) sessionFactory.getCurrentSession().save(subscribe);
		
		
		return subNum;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		System.out.println("创建sessionfactoty");
		this.sessionFactory = sessionFactory;
	}
	/**
	 * 显示用户订阅房源信息
	 */
	@Override
	public Subscribe showSubscribeInfo(Long userId) {
		/*Subscribe subscribe= (Subscribe) sessionFactory.getCurrentSession().get(Subscribe.class, userId);*/
		String hql="from Subscribe where userid=?";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, userId);
		Subscribe subscribe=(Subscribe) query.uniqueResult();
		
		return subscribe;
	}
	/**
	 * 修改用户订阅房源信息
	 */
	@Override
	public int updateSubInfo(Subscribe subscribe) {
		
		int userId=subscribe.getUser().getUserid();
		//int 强转为long型
		Long uLong=(long) userId;
		//保证subscribe中的值是完全的
		Subscribe subscribe2= showSubscribeInfo(uLong);
		int upNum=0;
		if(subscribe2!=null){
			subscribe2.setCircletime(subscribe.getCircletime());
			subscribe2.setHousetype(subscribe.getHousetype());
			subscribe2.setRentmoneymax(subscribe.getRentmoneymax());
			subscribe2.setRentmoneymin(subscribe.getRentmoneymin());
			subscribe2.setRenttype(subscribe.getRenttype());
			subscribe2.setSubarealocalinfo(subscribe.getSubarealocalinfo());
			subscribe2.setSubsubmitdate(subscribe.getSubsubmitdate());
			sessionFactory.getCurrentSession().update(subscribe2);
			upNum=1;
		}
		
		return upNum;
	}
	
	/**
	 * 查看符合条件的订阅房源信息列表
	 */
	@Override
	public List<House> checkSubInfo(Subscribe subscribeInfo) {
		/*Subscribe subscribeInfo = showSubscribeInfo((long)userId);*/
		List<House> hsList = new ArrayList<House>();
		if(subscribeInfo!=null){
			String subarealocalinfo = subscribeInfo.getSubarealocalinfo();//区域信息     对应房源表    location
			String housetype = subscribeInfo.getHousetype();//房屋户型        对应房源表    housetype
			
			Double rentmoneymin = subscribeInfo.getRentmoneymin();//租房上限     对应房源表        monthpay
			Double rentmoneymax = subscribeInfo.getRentmoneymax();//租房下限      对应房源表      monthpay
			/*暂时不用租住类型
			 * String renttype = subscribeInfo.getRenttype();//租住类型      对应房源表      QUICKTYPE
            */		
			String circletime = subscribeInfo.getCircletime();//周期长短即出租方式（年租 月租）  对应房源表  renttype
			System.out.println(subscribeInfo.getUser().getUserid()+subarealocalinfo+","+housetype+","+rentmoneymin+","+rentmoneymax+","+circletime);
			String renttype = subscribeInfo.getRenttype();//租住类型      对应房源表      QUICKTYPE
			/*String hql="from House where location like  ? and housetype = ? and monthpay > ? and monthpay > ? and renttype =?";*/
			String hql="from House where location like  ? and housetype like ? and monthpay > ? and monthpay < ? and renttype =? and quicktype=?";
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery(hql);
			query.setParameter(0, "%"+subarealocalinfo+"%");
			query.setParameter(1, "%"+housetype+"%");
			query.setParameter(2, rentmoneymin);
			query.setParameter(3, rentmoneymax);
			query.setParameter(4, circletime);
			query.setParameter(5, renttype);
			hsList = query.list();
		}
		return hsList;
	}
	/**
	 * 搜索模块
	 */
	@Override
	public List<House> searchGlobalHouses(String searchInfo,String rentypeInfo,Integer pageNo,Integer pageSize) {
		StringBuffer sBuffer=new StringBuffer();
		sBuffer.append("from House where 1=1");
		if(searchInfo!=null){
			sBuffer.append("and location like '%"+searchInfo+"%'");
		}
		if(rentypeInfo!=null){
			sBuffer.append("and quicktype = '"+rentypeInfo+"'");
		}
		Query query = sessionFactory.getCurrentSession().createQuery(sBuffer.toString());
		query.setFirstResult((pageNo-1)*pageSize);
		query.setMaxResults(pageSize);
		List<House> list =query.list();
		
		return list;
	}
	//查询信息总数
	@Override
	public Integer searchGlobalHousesNum(String searchInfo, String rentypeInfo,Integer pageNo, Integer pageSize) {
		StringBuffer sBuffer=new StringBuffer();
		sBuffer.append("from House where 1=1");
		if(searchInfo!=null){
			sBuffer.append("and location like '%"+searchInfo+"%'");
		}
		if(rentypeInfo!=null){
			sBuffer.append("and quicktype = '"+rentypeInfo+"'");
		}
		Query query = sessionFactory.getCurrentSession().createQuery(sBuffer.toString());
		List<House> list =query.list();
		
		return list.size();
	}
	
	/*@Test
	public void t1(){select count(*) from Order where 1=1 
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SubscribeDaoImpl sDaoImpl= (SubscribeDaoImpl) ac.getBean("subscribeDao");
		List<House> cslist = sDaoImpl.checkSubInfo(1);
		for (House house : cslist) {
			System.out.println(house.getHouseadress()+house.getLandlordwordsent());
		}
		System.out.println(cslist.size());
	}*/
	

}
