//package com.board.write.controller;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//public class WriteServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 요청 파라미터에서 회원 정보 추출
//        String userId = request.getParameter("user_id");
//        String userPassword = request.getParameter("user_passwd");
//        String userName = request.getParameter("user_name");
//        String userSocialNum = request.getParameter("user_social_num");
//        String userPhone = request.getParameter("user_phone");
//        String userEmail = request.getParameter("user_email");
//        String userZipcode = request.getParameter("user_zipcode");
//        String userAddress = request.getParameter("user_address");
//
//        // 실제로는 이 정보를 데이터베이스에 저장하는 등의 작업을 수행해야 합니다.
//          response.setContentType("text/html;charset=UTF-8");
//    PrintWriter out = response.getWriter();
//    out.println("<html><body>");
//    out.println("<h2>회원가입이 완료되었습니다.</h2>");
//    out.println("<a href='home.jsp'>홈으로 이동</a>");
//    out.println("</body></html>");
//}
//}
//
//
//
