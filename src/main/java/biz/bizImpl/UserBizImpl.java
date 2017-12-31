package biz.bizImpl;

import org.springframework.stereotype.Service;

import dao.UserDao;

import entity.User;
import biz.UserBiz;

@Service
public class UserBizImpl implements UserBiz {

	private UserDao userDao;

	/**
	 * 完善用户信息
	 */
	@Override
	public void updateUser(User user) {

		userDao.updateUser(user);
	}

	// 登陆
	public User login(String loginname, String password) {

		return userDao.login(loginname, password);
	}

	// 注册
	public int regist(User user) {

		return userDao.regist(user);
	}

	// 查询用户是否存在
	public User finduser(String loginname) {

		return userDao.finduser(loginname);
	}

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
