package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import util.DateUtil;

import biz.collectionBiz;

import entity.Collection;
import entity.House;
import entity.Order;
import entity.User;

@Controller
public class CollectionController {
	@Resource
	private collectionBiz collectionBiz;
	
	@RequestMapping(value="findAllCollection")
	public String findAllCollection(@RequestParam(value="pageNo",defaultValue="1",required=false)Integer pageNo,
			@RequestParam(value="pageSize",defaultValue="1",required=false)Integer pageSize,
			Model model){
		List<Collection> oList = collectionBiz.findAllCollection(pageNo, pageSize);
		
		model.addAttribute("oList", oList);
		
		//分页窗口的展示
		
		//总共查询到的结果数
		int rowSize = collectionBiz.count();
		//总页数
		int totalPage;
		if(rowSize%pageSize==0){
			totalPage = rowSize/pageSize;
		}else {
			totalPage = rowSize/pageSize+1;
		}
		//页面列表
		List<Integer> list = new ArrayList<Integer>();
		
		
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
		
		
		
		model.addAttribute("windowNo",windowNo);
		model.addAttribute("totalWindow",totalWindow);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("list",list);
		model.addAttribute("totalPage",totalPage);
		return "collection";
		
	
	}
	
	@RequestMapping(value="delCollection")
	public String delCollection(int id,RedirectAttributes attributes){
		//System.out.println(id+"-------------asdasdasdasd--------------");
		collectionBiz.delCollection(id);
		
		return "redirect:findAllCollection";
	}
	
	
	public collectionBiz getCollectionBiz() {
		return collectionBiz;
	}

	public void setCollectionBiz(collectionBiz collectionBiz) {
		this.collectionBiz = collectionBiz;
	}
	
	
	@RequestMapping(value="addCollection")
	public String addCollection(int userId,int houseId){
		//System.out.println(userId+",,,,,,"+houseId);
		User user = new User(userId);
		House house = new House(houseId);
		Collection collection  = new Collection(user, house, DateUtil.DateToString(new Date()));
		int a = collectionBiz.add(collection);
		//System.out.println(a);
		return "house-detail";
	}
	
}
