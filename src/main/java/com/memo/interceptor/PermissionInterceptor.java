package com.memo.interceptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
@Component
public class PermissionInterceptor implements HandlerInterceptor{
	private Logger log = LoggerFactory.getLogger(PermissionInterceptor.class);
	@Override
	public boolean preHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
		
		String uri = request.getRequestURI();
		log.info("[######## prehandle] uri:{}", uri);

		// 비로그인 && /post로 온 경우 => 로그인 페이지로 리다이렉트 return false
		if (userName == null && uri.startsWith("/post")) {
			response.sendRedirect("/user/sign_in_view");
			return false;
		}
		// 로그인 && /user로 온 경우 => 글 목록 페이지로 리다이렉트 return false
		if (userName != null && uri.startsWith("/user")) {
			response.sendRedirect("/post/post_list_view");
			return false;
		}
		return true; // 컨트롤러 수행
	}
	@Override
	public void postHandle(
			HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
		log.info("[######## posthandle]");
	}
	@Override
	public void afterCompletion(
			HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		log.info("[######## afterCompletion]");

	}
}