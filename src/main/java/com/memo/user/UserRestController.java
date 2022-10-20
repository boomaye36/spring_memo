package com.memo.user;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.memo.common.EncryptUtils;
import com.memo.user.bo.UserBO;

@RestController
@RequestMapping("/user")
public class UserRestController {
	@Autowired
	private UserBO userBO;
	
	/**
	 * 
	 * 
	 * @param loginId
	 * @return
	 */
	@RequestMapping("/is_duplicated_id")
	public Map<String, Object> isDuplicatedId(
			@RequestParam("loginId")String loginId){
		Map<String, Object> result = new HashMap<>();
		boolean isDuplicated = userBO.existLoginId(loginId);
		if (isDuplicated) {
			result.put("result", true);// 중복
			result.put("code", 100); // 성공
		}else {
			result.put("errorMessage", false); //중복 아님
			result.put("code", 100); // 성공

		}
		return result;
	}
	@PostMapping("/sign_up")
	public Map<String, Object> signUp(
		@RequestParam("logInId") String loginId,
		@RequestParam("pwId") String pwId,
		@RequestParam("name") String name,
		@RequestParam("emailAddress") String emailAddress){
		//암호화 => 해싱  aaaa => asdfasd  aaaa=> asdfasd
		// md5
		String encryptPassword = EncryptUtils.md5(pwId);
		//db insert
		userBO.addUser(loginId, encryptPassword, name, emailAddress);
		
		Map<String, Object> result = new HashMap<>();
		result.put("code", 100);
		result.put("result", "success");
		return result;
	}
	
}
