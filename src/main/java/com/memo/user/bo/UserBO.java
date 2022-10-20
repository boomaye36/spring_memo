package com.memo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.memo.user.dao.UserDAO;

@Service
public class UserBO {
	@Autowired
	private UserDAO userDAO;
	public boolean existLoginId(String loginId) {
		return userDAO.existLoginId(loginId);
	}
	public void addUser(String loginId, String pwId, String name, String emailAddress) {
		userDAO.addUser(loginId, pwId, name, emailAddress);
	} 
		
	
}
