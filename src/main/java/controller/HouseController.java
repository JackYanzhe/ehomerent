package controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import entity.Charge;

import entity.House;

import entity.Pape;
import entity.User;

import biz.HouseBiz;

@Controller
@Scope("prototype")
public class HouseController {
	@Resource(name = "houseBiz")
	private HouseBiz houseBiz;
	private static int ps = 1;

	public HouseController() {
		super();
	}

	/**
	 * 新增房源
	 * 
	 * @param houseadress
	 * @param housetype
	 * @param userId
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "addHouse")
	public String addHouse(String houseadress, String housetype, int userId,
			HttpServletRequest request, Model model) {
		// 默认单例模式,目标方法的参数名对应前台出入的参数
		/*System.out.println("============进入控制类目标方法addHouse========"
				+ houseadress + "," + housetype + "," + userId);*/

		House house = new House();
		house.setHouseadress(houseadress);
		house.setHousetype(housetype);
		User user = new User();
		user.setUserid(userId);
		house.setUser(user);
		house.setLandlordwordsent("asdfghjm");
		house.setLandlordask("wertyui");

		int num = (Integer) houseBiz.addHouse(house);
		HttpSession session = request.getSession();
		session.setAttribute("houseId", num);

		model.addAttribute("houseadress", houseadress);
		model.addAttribute("housetype", housetype);
		return "issuance-success";
	}
	
	/**
	 * 通过房源id查询房源详情
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("housedetail")
	public String housedetail(Integer id, Model model) {
		if (id != null) {
			House house = houseBiz.findHouseDetail(id);
			model.addAttribute("house", house);
		}
		return "house-detail";
	}

	/**
	 * 分页查询房源信息
	 * @param userId
	 * @param pageNo
	 * @param pageSize
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "findAllHouse")
	public String findAllHouse(
			@RequestParam(value = "userId", defaultValue = "1001", required = false) Integer userId,
			@RequestParam(value = "pageNo", defaultValue = "1", required = false) Integer pageNo,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			Model model) {

		if (pageSize != null) {
			ps = pageSize;
		}

		House house = new House();

		Pape<House> pageItem = houseBiz.findIssuanceHouse(userId, pageNo, ps,
				house);

		int endWindowFirstNo = (pageItem.getTotalPage() - 1) / 5 * 5 + 1;// 最后一个窗口的第一个页码值
		int currWindowFirstNo = (pageItem.getPageNo() - 1) / 5 * 5 + 1;// 当前窗口的第一个页码值
		int currWindowLastNo = 0;// 当前窗口的最后一个页码值

		int nextWindowFirstNo;// 下一个窗口的第一页
		int preWindowFirstNo;// 上一个窗口的第一页
		List<Integer> pageNoList = new ArrayList<Integer>();// 页码集合

		if (currWindowFirstNo == endWindowFirstNo) {
			currWindowLastNo = pageItem.getTotalPage();
			nextWindowFirstNo = pageItem.getPageNo();
		} else {
			currWindowLastNo = currWindowFirstNo + 4;
			nextWindowFirstNo = currWindowFirstNo + 5;
		}

		if (currWindowFirstNo == 1) {
			preWindowFirstNo = pageItem.getPageNo();
		} else {
			preWindowFirstNo = currWindowFirstNo - 5;
		}

		for (int i = currWindowFirstNo; i <= currWindowLastNo; i++) {
			pageNoList.add(i);
		}

		model.addAttribute("pageItem", pageItem);
		model.addAttribute("pageNoList", pageNoList);

		model.addAttribute("nextWindowFirstNo", nextWindowFirstNo);
		model.addAttribute("preWindowFirstNo", preWindowFirstNo);

		return "landLord";
	}

	/**
	 * 异步删除全部房源
	 * @param userId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "deleteAllHouse")
	public Map<String, String> deleteAllHouse(int userId) {
		String msg;
		Map<String, String> map = new HashMap<String, String>();

		House house = new House();
		Boolean n = houseBiz.deleteHouse(house, userId);
		if (n) {
			msg = "删除成功！！！";
		} else {
			msg = "删除失败！！！";
		}
		map.put("msg", msg);
		return map;
	}

	/**
	 * 异步 根据房源id删除房源
	 * @param houseId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "deleteHouseById")
	public Map<String, String> deleteHouseById(Integer houseId) {
		String msg;
		Map<String, String> map = new HashMap<String, String>();
		House house = new House();
		house.setHouseinfoid(houseId);
		Boolean n = houseBiz.deleteHouse(house, 0);
		if (n) {
			msg = "删除成功！！！";
		} else {
			msg = "删除失败！！！";
		}
		System.out.println("=====" + msg);
		map.put("msg", msg);
		return map;
	}

	/***
	 * 完善房源信息
	 * 
	 * @param house
	 * @return
	 */
	@RequestMapping(value = "updateHouse")
	public String updateHouse(House house) {
		int num = (Integer) houseBiz.updateHouse(house);
		//System.out.println("**********" + num);
		return "redirect:findAllHouse";
	}

	/***
	 * 上传房源照片
	 * 
	 * @param housetype
	 * @param houseadress
	 * @param upload
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/upload")
	public String doUpload(String housetype, String houseadress,
			MultipartFile upload, HttpServletRequest request, Model model) {
		String savePath = request.getSession().getServletContext()
				.getRealPath("/upload");
		String fileName = upload.getOriginalFilename();

		// 定义输出文件
		File saveFile = new File(savePath + "/" + fileName);
		try {
			// 将上传的文件保存到服务器目录下
			upload.transferTo(saveFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("fileName", fileName);
		model.addAttribute("saveFile", saveFile);
		model.addAttribute("housetype", housetype);
		model.addAttribute("houseadress", houseadress);
		return "perfect-house";
	}

	public HouseBiz getHouseBiz() {
		return houseBiz;
	}

	public void setHouseBiz(HouseBiz houseBiz) {
		this.houseBiz = houseBiz;
	}

}
