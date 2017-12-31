package biz.bizImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import dao.SubscribeDao;
import entity.House;
import entity.Subscribe;
import biz.SubscribeBiz;
@Service("subscribeBiz")
public class SubscribeBizImpl implements SubscribeBiz {
	
	@Autowired
	@Qualifier("subscribeDao")
	private SubscribeDao subscribeDao;
   //保存用户订阅信息
	@Override
	public long saveSubscribeInfo(Subscribe subscribe) {
		return subscribeDao.saveSubscribeInfo(subscribe);
	}
	
	
	public SubscribeDao getSubscribeDao() {
		return subscribeDao;
	}
	public void setSubscribeDao(SubscribeDao subscribeDao) {
		this.subscribeDao = subscribeDao;
	}
	public SubscribeBizImpl(){
		
		System.out.println("实例化sub bizimpl");
	}

	/**
	 * 查看当前用户用户订阅房源信息
	 */
	@Override
	public Subscribe showSubscribeInfo(Long userId) {
		
		return subscribeDao.showSubscribeInfo(userId);
	}

  /**
   * 修改房源信息
   */
	@Override
	public int updateSubInfo(Subscribe subscribe) {
		
		return subscribeDao.updateSubInfo(subscribe);
	}

   //查询符合条件的房源信息
	@Override
	public List<House> checkSubInfo(Subscribe subscribeInfo) {
		
		return subscribeDao.checkSubInfo(subscribeInfo);
	}

   //搜索功能
	@Override
	public List<House> searchGlobalHouses(String searchInfo,String rentypeInfo,Integer pageNo,Integer pageSize) {
		// TODO Auto-generated method stub
		return subscribeDao.searchGlobalHouses(searchInfo, rentypeInfo, pageNo, pageSize);
	}


	@Override
	public Integer searchGlobalHousesNum(String searchInfo, String rentypeInfo,
			Integer pageNo, Integer pageSize) {
		// TODO Auto-generated method stub
		return subscribeDao.searchGlobalHousesNum(searchInfo, rentypeInfo, pageNo, pageSize);
	}
	

}
