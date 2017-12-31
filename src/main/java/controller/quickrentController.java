package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import biz.quickrentBiz;
import entity.House;
import entity.MonthPayCondition;
import entity.Pape;

@RequestMapping("/quickrent")
@Controller
public class quickrentController {
	@Autowired
	@Qualifier("quickrentBiz")
  private quickrentBiz quickrentBiz;
	public quickrentBiz getQuickrentBiz() {
		return quickrentBiz;
	}

	public void setQuickrentBiz(quickrentBiz quickrentBiz) {
		this.quickrentBiz = quickrentBiz;
	}

	@RequestMapping("/select")
     public String  select(String cnz,String zz){

		/*System.out.println("===============进入查询===============");
		System.out.println("=========="+cnz);
		System.out.println("=========="+zz);*/
    	 return "index";
    	 
     }
	
	@ResponseBody
	@RequestMapping("/json")
	public String  json(String zn,String zm)
	{
	
			//System.out.println("================进入json===========");
			
		return null;
		
	}
	/**
	 * 动态查询房源信息
	 */
	
	@ResponseBody
	@RequestMapping("/queryDynHouseInfo")
	public Pape<House> queryDynHouseInfo(House house, MonthPayCondition mcp,	@RequestParam(value="pageNo",defaultValue="1",required=false)Integer pageNo){
		//System.out.println("最大值："+mcp.getMonthpaymax()+",最小值："+mcp.getMonthpaymin());
		/*quickrentBiz.findPageHouse(1, 2, house, mpc);*/
		//System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		//System.out.println("户型："+house.getHousetype()+",出租周期："+house.getRenttype()+",出租类型："+house.getQuicktype());
		Pape<House> findPageHouse = quickrentBiz.findPageHouse(pageNo, 4, house, mcp);
		/*List<House> hList=findPageHouse.getPageList();*/
		//System.out.println(findPageHouse.getPageList().size());
		//System.out.println(findPageHouse.getPageList().get(0).getQuicktype()+"--------------------------------");
		return findPageHouse;
	}

	
}
