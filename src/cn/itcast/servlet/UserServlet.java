package cn.itcast.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.domain.User;

/**
 * 查询的所有用户的信息
 * @author Administrator
 */
public class UserServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 创建集合
		List<User> uList = new ArrayList<User>();
		// 把对象放入到集合 中
		uList.add(new User("美美","123"));
		uList.add(new User("小凤","456"));
		uList.add(new User("如花","789"));
		// 把集合放入到request域中
		request.setAttribute("uList", uList);
		// 转发到JSP页面上
		request.getRequestDispatcher("/jstl/foreach2.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
