package biz;

import java.util.List;

import entity.House;
import entity.Pape;

public interface HouseBiz {

	// 根据房源id查询房源详情信息
	public House findHouseDetail(int id);

	// 添加房源信息
	public int addHouse(House house);

	// 查询房东发布的房源
	public Pape<House> findIssuanceHouse(int id, int pageNo, int pageSize,
			House house);

	// 删除房源信息
	public boolean deleteHouse(House house, int id);

	// 修改房源信息
	public int updateHouse(House house);

	// 根据用户id查询房源信息
	public List<House> findHousesByuserId(int userId);
}
