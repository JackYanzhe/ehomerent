package biz.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import biz.HouseBiz;
import dao.HouseDao;
import entity.House;
import entity.Pape;

@Service("houseBiz")
public class HouseBizImpl implements HouseBiz {
	@Resource(name = "houseDao")
	private HouseDao houseDao;

	/**
	 * 查询房源详情信息
	 */
	@Override
	public House findHouseDetail(int id) {
		return houseDao.findHouseDetail(id);
	}

	/**
	 * 添加房源信息
	 */
	public int addHouse(House house) {
		return houseDao.addHouse(house);
	}

	/**
	 * 查询房东发布的房源
	 */
	public Pape<House> findIssuanceHouse(int id, int pageNo, int pageSize,
			House house) {
		// TODO Auto-generated method stub
		return houseDao.findIssuanceHouse(id, pageNo, pageSize, house);
	}

	/**
	 * 删除房源信息
	 */
	public boolean deleteHouse(House house, int id) {
		return houseDao.deleteHouse(house, id);

	}

	/**
	 * 修改房源信息
	 */
	public int updateHouse(House house) {
		return houseDao.updateHouse(house);

	}

	/**
	 * 根据用户id查询房源信息
	 */
	@Override
	public List<House> findHousesByuserId(int userId) {

		return houseDao.findHousesByuserId(userId);
	}

	public HouseDao getHouseDao() {
		return houseDao;
	}

	public void setHouseDao(HouseDao houseDao) {
		this.houseDao = houseDao;
	}

}
