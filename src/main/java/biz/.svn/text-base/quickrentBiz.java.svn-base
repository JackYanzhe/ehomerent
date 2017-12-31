package biz;

import entity.House;
import entity.MonthPayCondition;
import entity.Pape;

public interface quickrentBiz {
	  /**
     * 分页显示
     * @param pageNo
     * @param pageSize
     * @param house
     * @param mpc
     * @return
     */
    public Pape<House> findPageHouse(int pageNo,int pageSize,House house,MonthPayCondition mpc);
    /**
     * 分页查询总信息条数显示
     * @param house
     * @param mpc
     * @return
     */
    public int  manySearchTol(House house,MonthPayCondition mpc);
}
