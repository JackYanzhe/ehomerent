package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	// 初始化一个ThreadLocal对象
	private static final ThreadLocal sessionTL = new ThreadLocal(); 
	private static Configuration configuration;
	private final static SessionFactory sessionFactory;
	static {
		try {
			configuration = new Configuration().configure();
			sessionFactory = configuration.buildSessionFactory();
			System.out.println("****************************当前sessionFactory:"+sessionFactory);
		} catch (Throwable ex) {
			throw new ExceptionInInitializerError(ex);
		}
	}
	public static Session currentSession() {
		//sessionTL的get()方法根据当前线程返回其对应的线程内部变量，
		//也就是我们需要的Session，多线程情况下共享数据库连接是不安全的。
		//ThreadLocal保证了每个线程都有自己的Session。
		Session session = (Session) sessionTL.get(); 
		System.out.println("================当前session:"+session);
		// 如果session为null，则打开一个新的session
		if (session == null) { 
			//创建一个数据库连接对象session。
			session = sessionFactory.openSession(); 
			// 保存该数据库连接session到ThreadLocal中。
			sessionTL.set(session); 
		}
		//如果当前线程已经访问过数据库了，
		//则从sessionTL中get()就可以获取该线程上次获取过的数据库连接对象。
		return session; 
	}
	/**
	 * 关闭Session
	 */
	public static void closeSession(){
		Session session = (Session) sessionTL.get(); 
		sessionTL.set(null);
		session.close();
	}
}
