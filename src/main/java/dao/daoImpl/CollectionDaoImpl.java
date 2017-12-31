package dao.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Service;

import dao.CollectionDao;
import entity.Collection;
import entity.Order;
@Service
public class CollectionDaoImpl implements CollectionDao {
	private SessionFactory sessionFactory;
	@Override
	public int add(Collection collection) {
		Session session = sessionFactory.getCurrentSession();
		
		int num = (Integer) session.save(collection);
		
		return num;
	}
	public SessionFactory getSessionFactory() {
		
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Collection> findAllCollection(int pageNo, int pageSize) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Collection where 1=1 ";
		
		Query query = session.createQuery(hql);
		
		List<Collection> list = query.setFirstResult(pageSize*(pageNo-1))
				.setMaxResults(pageSize).list();
		return list;
		
	}
	
	public int count(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "select count(*) from Collection ";
		Query query = session.createQuery(hql);
		int num = Integer.valueOf(query.uniqueResult().toString());
		return num;
		
	}
	@Override
	public void delCollection(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Collection c  = new Collection();
		c.setCollectionId(id);
		session.delete(c);
		tx.commit();
		
	}
	
}
