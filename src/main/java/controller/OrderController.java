package controller;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import entity.Condition;
import entity.Order;
import entity.User;


import biz.OrderBiz;
import biz.bizImpl.OrderBizImpl;

@Controller
public class OrderController {
	@Resource(name="orderBiz")
	private OrderBiz orderBiz ;
	
	public OrderBiz getOrderBiz() {
		return orderBiz;
	}
	public void setOrderBiz(OrderBiz orderBiz) {
		this.orderBiz = orderBiz;
	}
	
	
	//分页查询所有
	@RequestMapping(value="pagination")
	public String pagination(
			@RequestParam(value="pageNo",defaultValue="1",required=false)Integer pageNo,
			@RequestParam(value="pageSize",defaultValue="10",required=false)Integer pageSize,
			@RequestParam(value="userId")Integer userId,
			Model model){
		/*System.out.println("===========进入=分页==========="+pageSize+"=========");
		
		System.out.println("===========进入=分页===session========"+userId+"====++=====");*/
		Condition condition = new Condition();
		condition.setUserId(userId);
		List<Order> oList = orderBiz.findAllOrders(pageNo, pageSize, condition);
		/*for (Order order : oList) {
			System.out.println(order.getHouse().getHouseimg().getImgurl1()+","+order.getOrderstatus());
		}*/
	
		model.addAttribute("oList", oList);
		
		//分页窗口的展示
		
		//总共查询到的结果数
		int rowSize = orderBiz.countNum(condition);
		//总页数
		int totalPage;
		if(rowSize%pageSize==0){
			totalPage = rowSize/pageSize;
		}else {
			totalPage = rowSize/pageSize+1;
		}
		//页面列表
		List<Integer> list = new ArrayList<Integer>();
		/*for(int i=1;i<=totalPage;i++){
			list.add(i);
		}*/
		
		//关于窗口
		//定义一个窗口显示2页
		int windowSize =2;//窗口容量
		int windowNo = 1;//当前窗口
		int totalWindow;//总窗口
		//当前窗口
		if (pageNo % windowSize == 0) {
			//System.out.println("===========================");
			windowNo = pageNo / windowSize;
		} else {
			windowNo = pageNo / windowSize + 1;
		}
		//总窗口
		if(totalPage%windowSize==0){
			totalWindow = totalPage/windowSize;
		}else {
			totalWindow = totalPage/windowSize+1;
		}
		
		//确定每个窗口的页面的范围
		if(windowNo*windowSize>totalPage){//越界
			for (int i = (windowNo - 1) * windowSize + 1; i <=totalPage; i++) {
				list.add(i);
			}	
		}else{
			for(int i = (windowNo - 1) * windowSize + 1; i <=windowNo*windowSize; i++){
				list.add(i);
			}
		}
		/*
		for (Integer integer : list) {
			System.out.println(integer);
		}
		System.out.println("++++++++++++++++++++++++++++++++++");*/
		model.addAttribute("windowNo",windowNo);
		model.addAttribute("totalWindow",totalWindow);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("list",list);
		model.addAttribute("totalPage",totalPage);
		return "order";
	}
	
	//增添订单
	@RequestMapping(value="addOrder")
	public String addOrder(Order order,HttpSession session){
		//System.out.println(session.getAttribute("userId")+"==============");
		order.setOrderstatus(0);
		order.setOrderdate(new Date());
		
			User user = new User();
			user.setUserid((Integer)session.getAttribute("userId"));
			order.setUser(user);
		
		
		//System.out.println(order.getUser().getUserid()+"[[[[[[[[[[");	
		orderBiz.addOrder(order);
		
		return "forward:pagination";
	}
	@RequestMapping(value="deleteOrder")
	//删除订单
	public String deleteOrder(Integer orderId,Model model){
		boolean flag = orderBiz.deleteOrder(orderId);
		String msg = "";
		if(flag){
			msg = "删除成功！！！";
		}else {
			msg = "订单不存在";
		}
		model.addAttribute("msg", msg);
		return "redirect:pagination";
	}
	
}
