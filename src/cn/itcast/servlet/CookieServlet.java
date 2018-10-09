package cn.itcast.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 向页面回写coookie
 * @author Administrator
 *
 */
public class CookieServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1605422223491497435L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 创建coookie对象
		Cookie cookie = new Cookie("last","2015-01-27");
		// 回写到浏览器端
		response.addCookie(cookie);
		// 重定向到页面
		response.sendRedirect(request.getContextPath()+"/jsp/eldemo3.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}





