package com.memo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.memo.common.FileManagerService;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer{
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry
		.addResourceHandler("/images/**") // localhost 뒤에 주소 (웹주소)  http://localhost/images/palang_16205468764/sun.png
		.addResourceLocations("file:///" + FileManagerService.FILE_UPLOAD_PATH); //실제 파일 위치 경로 // mac의 경우 하나만 적어야함 file:/
	}
}
