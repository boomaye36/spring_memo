package com.memo.user.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDAO {
	public boolean existLoginId(String loginId);

	public void addUser(@Param("loginId") String loginId, @Param("pwId") String pwId, @Param("name") String name,
			@Param("emailAddress") String emailAddress);
}
