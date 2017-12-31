package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import entity.House;
import entity.User;


import biz.HouseBiz;
import biz.UserBiz;

@Controller
public class UserController {
	@Resource
	private UserBiz userBiz ;
	@Resource
	private HouseBiz houseBiz;
	
	
	@RequestMapping(value="login")
	public String login(HttpServletRequest request,HttpServletResponse response) {
		String loginname=request.getParameter("loginname");
		String password =request.getParameter("password");
		String msg="login";
		
		if(loginname!=null & loginname!="" & password!=null & password!=""){
			User user = userBiz.login(loginname, password);
			if (user!=null) {

				List<House> hlist = houseBiz.findHousesByuserId(user.getUserid());
				List<Integer> iList = new ArrayList<Integer>();
				
				for (House house : hlist) {
					//System.out.println(house.getHouseinfoid()+"================");
					iList.add(house.getHouseinfoid());
				}
				Integer[] houseinfos = new Integer[iList.size()];
				for(int i = 0;i < iList.size(); i ++){
					houseinfos[i] = iList.get(i);
				}
				request.getSession().setAttribute("houseinfoids",houseinfos);
				request.getSession().setAttribute("userId", user.getUserid());
				request.getSession().setAttribute("loginname", loginname);
				request.getSession().setAttribute("user", user);

				msg= "homepage";
			}
			if (user==null) {
				msg ="login";
				request.setAttribute("error", "用户名或密码错误!!!");
			}
		}else {
			request.setAttribute("error", "用户名或密码错误!!!");
		}
		
		return msg;
	}
	
	@RequestMapping("finduser")
	@ResponseBody
	public Map<String,String> finduser(HttpServletRequest request){
		
		Map<String,String> map = new HashMap<String, String>();
		String loginname=request.getParameter("loginname");
		if(loginname!=null & loginname!=""){
			User user =userBiz.finduser(loginname);
			if(user!=null){
				
				map.put("msg", "*用户名已存在!!!");
			}else {
				
				map.put("msg", "*用户名可用!!!");
			}
		}else {
			map.put("msg", "*用户名不能为空!!!");
		}		
		return map;
				
	}

	@RequestMapping("regist")
	public String regist(User user,HttpServletRequest request) {
		String msg="regist";
		if(user!=null){
			int id = userBiz.regist(user);
				if(id>0){
					msg="login";
					request.setAttribute("msg", "注册成功!!!");
				}else {
					msg="regist";
				}
			}
		
		return msg;
	}
	
	
	
	/**
	 * 完善个人信息
	 * @param upload
	 * @param request
	 * @return
	 */
	@RequestMapping(value="updateUser")
	public String updateUser(@RequestParam("userimage")MultipartFile upload,HttpServletRequest request){
		String useridStr = request.getParameter("userid");
		Integer userid = -1;
		if(useridStr!=null){
			userid = Integer.parseInt(useridStr);
		}
		//System.out.println(userid);
		String loginname = request.getParameter("loginname");
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String idcard = request.getParameter("idcard");
		String telephone = request.getParameter("telephone");
		String genderStr = request.getParameter("gender");
		Integer gender = -1;
		if(genderStr!=null){
			gender = Integer.parseInt(genderStr);
		}
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String age = request.getParameter("age");
		String eduexperience = request.getParameter("eduexperience");
		String marriagestatus = request.getParameter("marriagestatus");
		String worktype = request.getParameter("worktype");
		String personaltag = request.getParameter("personaltag");
		
		
		String savePath =request.getRealPath("/upload/");
		String fileName = upload.getOriginalFilename();
		//System.out.println(fileName+","+loginname);
		File file = new File(savePath+"/"+fileName);
		try {
			upload.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		User user = new User(userid, loginname, password, username, idcard, gender, address, email, telephone, fileName, age, eduexperience, marriagestatus, worktype, personaltag);
		
		request.getSession().setAttribute("image", fileName);
		userBiz.updateUser(user);
		
		return "homepage";
	}
	
	@RequestMapping(value="exit")
	public String exit(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();
		return "login";
		
	}
	
	
	public UserBiz getUserBiz() {
		return userBiz;
	}

	public void setUserBiz(UserBiz userBiz) {
		this.userBiz = userBiz;
	}

	public HouseBiz getHouseBiz() {
		return houseBiz;
	}

	public void setHouseBiz(HouseBiz houseBiz) {
		this.houseBiz = houseBiz;
	}
	
	
	
}
