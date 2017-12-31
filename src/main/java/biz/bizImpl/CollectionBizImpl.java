package biz.bizImpl;

import java.util.List;

import org.springframework.stereotype.Service;

import dao.CollectionDao;
import entity.Collection;
import biz.collectionBiz;
@Service
public class CollectionBizImpl implements collectionBiz {
	private CollectionDao collectionDao;
	@Override
	public int add(Collection collection) {
		// TODO Auto-generated method stub
		return collectionDao.add(collection);
	}
	public CollectionDao getCollectionDao() {
		return collectionDao;
	}
	public void setCollectionDao(CollectionDao collectionDao) {
		this.collectionDao = collectionDao;
	}
	@Override
	public List<Collection> findAllCollection(int pageNo, int pageSize) {
		// TODO Auto-generated method stub
		return collectionDao.findAllCollection(pageNo, pageSize);
	}
	@Override
	public int count() {
		// TODO Auto-generated method stub
		return collectionDao.count();
	}
	@Override
	public void delCollection(int id) {
		collectionDao.delCollection(id);
		
	}
	
	
	
}
