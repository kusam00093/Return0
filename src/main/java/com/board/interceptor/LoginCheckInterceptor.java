package com.board.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class LoginCheckInterceptor implements  HandlerInterceptor {

	 // preHandle: 컨트롤러가 호출되기 전에 실행됩니다.
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 세션에 로그인 정보가 있는지 확인합니다.
        Object userId = request.getSession().getAttribute("USER_ID");
        if (userId == null) {
            // 로그인이 되어있지 않으면 로그인 페이지로 이동합니다.
            response.sendRedirect(request.getContextPath() + "/login");
            return false; // 요청을 처리하지 않고 중단합니다.
        }
        // 로그인이 되어있으면 요청을 처리합니다.
        return true;
    }

    // postHandle: 컨트롤러가 실행된 후, 뷰가 렌더링되기 전에 실행됩니다.
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
            ModelAndView modelAndView) throws Exception {
        // 아무런 작업을 수행하지 않습니다.
    }

    // afterCompletion: 뷰 렌더링이 완료된 후에 실행됩니다.
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // 아무런 작업을 수행하지 않습니다.
    }
}



