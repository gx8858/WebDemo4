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
 * ��ѯ�������û�����Ϣ
 * @author Administrator
 */
public class UserServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ��������
		List<User> uList = new ArrayList<User>();
		// �Ѷ�����뵽���� ��
		uList.add(new User("����","123"));
		uList.add(new User("С��","456"));
		uList.add(new User("�绨","789"));
		// �Ѽ��Ϸ��뵽request����
		request.setAttribute("uList", uList);
		// ת����JSPҳ����
		request.getRequestDispatcher("/jstl/foreach2.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
