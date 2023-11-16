package com.veg.ksj.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.veg.hjj.member.dto.Member;
import com.veg.hjj.member.service.MemberService;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/admin/login.do")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String adminId=request.getParameter("adminid");
		String adminPwd=request.getParameter("adminpwd");
		
		
		//DB의 MEMBER테이블에 어드민의 모든 정보 가져오기
		Member m=new MemberService().selectMemberByIdAndPw(adminId,adminPwd);
		System.out.println(m);
		
		if(m.getAdminCheck().equals("Y")) {
			//어드민 로그인 성공
			//HttpSession에 데이터 저장
			HttpSession session=request.getSession();
			session.setAttribute("loginAdmin", m);
			response.sendRedirect("/views/admin/adminMain.jsp");
		} else {
			//어드민 로그인 실패
			request.setAttribute("msg", "아이디,패스워드를 정확히 적어주세요.");
			request.setAttribute("loc", "/");
			request.getRequestDispatcher("/views/admin/common/msg.jsp").forward(request, response);
			
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}