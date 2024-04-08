//package com.board.config;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//import com.board.interceptor.LoginCheckInterceptor;
//
//@Configuration
//public class WebMvcConfig  implements   WebMvcConfigurer   {
//
//	   @Override
//	    public void addInterceptors(InterceptorRegistry registry) {
//	        registry.addInterceptor(new LoginCheckInterceptor())
////	                .addPathPatterns("/**")
//	                .excludePathPatterns("/Login", "/" ); // 홈페이지 URL을 예외로 처리합니다.
//	    }
//	}
////	