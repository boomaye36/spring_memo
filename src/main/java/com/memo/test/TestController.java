package com.memo.test;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.memo.test.dao.TestDAO;

@Controller

public class TestController {
	@ResponseBody
	@RequestMapping("/test1")
    public String helloWorld() {
        return "Hello world!";
    }
	@RequestMapping("/jspTest")
	public String jsp() {
		return "test/test";
	}
	@Autowired
	private TestDAO testDAO;
	@ResponseBody
	@RequestMapping("/daoTest")
	public List<Map<String, Object>> dao() {
		List<Map<String, Object>> result = testDAO.selectTestList();
		return result;
	}
	@RequestMapping("/memoSignIn")
	public String signin() {
		return "test/signin";
	}
	@RequestMapping("/memoSignUp")
	public String signup() {
		return "test/signup";
	}
}
