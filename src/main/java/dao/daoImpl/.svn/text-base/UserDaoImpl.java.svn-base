package dao.daoImpl;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import dao.UserDao;
import entity.User;

public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;
	@Override
	
	/**
	 * 完善用户信息
	 */
	public void updateUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(user); 
		

	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	//登陆
		public User login(String loginname, String password) {
			Session session = sessionFactory.getCurrentSession();
			String hql = "from User where  loginname=? and password=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, loginname);
			query.setParameter(1, password);
			User user  = (User) query.uniqueResult();
			return user;
		}
		//查询用户是否存在
		public User finduser(String loginname) {
			Session session = sessionFactory.getCurrentSession();
			String hql = "from User where  loginname=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, loginname);
			User user  = (User) query.uniqueResult();
			return user;
		}
		
		//注册
		public int regist(User user) {
			Session session = sessionFactory.getCurrentSession();
			
			int id =  (Integer) session.save(user);
			
			return id;
		}
	
	
	
}
