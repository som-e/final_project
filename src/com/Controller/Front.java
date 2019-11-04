package com.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.DataAccessObject.*;

/**
 * Servlet implementation class front
 */
@WebServlet("*.do")
public class Front extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String uri = request.getRequestURI(); 
		String path = request.getContextPath();
		String front = uri.substring(path.length() + 1, uri.length());

		System.out.println(front); 
		
		memberDAO.check_db(); 
		
//if (front.equals("login.do")) {
//		LoginService login = new LoginService();
//		int cnt = login.execute(request, response);
//			if (cnt == 1) { 

//			RequestDispatcher disp = request.getRequestDispatcher("main.jsp");
//		disp.forward(request, response);
//			}

		
}

}