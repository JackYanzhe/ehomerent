package biz;

import java.util.List;

import entity.Collection;

public interface collectionBiz {
	public int add(Collection collection);// 添加收藏

	public List<Collection> findAllCollection(int pageNo, int pageSize);

	public int count();
	
	public void delCollection(int id);//删除收藏
}
