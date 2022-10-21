package com.memo.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.memo.user.model.User;

@Repository
public interface UserDAO {
	public boolean existLoginId(String loginId);

	public void addUser(@Param("loginId") String loginId, @Param("pwId") String pwId, @Param("name") String name,
			@Param("emailAddress") String emailAddress);
	
	public User selectUserByLoginIdAndPassword(
			@Param ("loginId") String loginId, 
			@Param ("password")String password);
}
