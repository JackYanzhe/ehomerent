package biz.bizImpl;

import org.omg.CORBA.PRIVATE_MEMBER;

import dao.quickrentDao;

import entity.House;
import entity.MonthPayCondition;
import entity.Pape;
import biz.quickrentBiz;

public class quickrentBizImpl implements quickrentBiz {
     private quickrentDao quickrentDao;
	@Override
	public Pape<House> findPageHouse(int pageNo, int pageSize, House house,
			MonthPayCondition mpc) {
		    
		return quickrentDao.findPageHouse(pageNo, pageSize, house, mpc) ;
	}
	public quickrentDao getQuickrentDao() {
		return quickrentDao;
	}
	public void setQuickrentDao(quickrentDao quickrentDao) {
		this.quickrentDao = quickrentDao;
	}
	/**
	 * 信息总条数
	 */
	@Override
	public int manySearchTol(House house, MonthPayCondition mpc) {
	
		return quickrentDao.manySearchTol(house, mpc);
	}
           
}
