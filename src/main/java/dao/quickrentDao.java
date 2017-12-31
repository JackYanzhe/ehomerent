package dao;

import java.util.List;

import entity.House;
import entity.MonthPayCondition;
import entity.Pape;

public interface quickrentDao {
              /*     *//**
                    * 多条件查询
                    *//*
	           public List<House>  manySearch(House house,MonthPayCondition mpc);*/
	           /**
	            * 多条件查询总条数
	            */
	           public int  manySearchTol(House house,MonthPayCondition mpc);
	           /**
	            * 分页显示
	            * @param pageNo
	            * @param pageSize
	            * @param house
	            * @param mpc
	            * @return
	            */
	           public Pape<House> findPageHouse(int pageNo,int pageSize,House house,MonthPayCondition mpc);
}
