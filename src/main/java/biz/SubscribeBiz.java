package biz;

import java.util.List;

import entity.House;
import entity.Subscribe;

public interface SubscribeBiz {
	 //保存插入用户订阅房源信息
		public long saveSubscribeInfo(Subscribe subscribe);
		//查看当前用户用户订阅房源信息
		public Subscribe showSubscribeInfo(Long userId);
		//修改当前用户订阅房源信息
		public int updateSubInfo(Subscribe subscribe);
		//查阅是否有符合条件的订阅信息
		public List<House> checkSubInfo(Subscribe subscribeInfo);
		//全局搜索功能
		public List<House> searchGlobalHouses(String searchInfo,String rentypeInfo,Integer pageNo,Integer pageSize);
		//全局搜索功能查询信息总数
		public Integer searchGlobalHousesNum(String searchInfo,String rentypeInfo,Integer pageNo,Integer pageSize);
}
