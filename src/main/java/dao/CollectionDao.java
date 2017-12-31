package dao;

import java.util.List;

import entity.Collection;

public interface CollectionDao {
	public int add(Collection collection);//添加收藏
	
	public List<Collection> findAllCollection(int pageNo,int pageSize);//查询收藏
	
	public int count();//获取总行数
	
	public void delCollection(int id);//删除收藏
}
