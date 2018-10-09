package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * ��ǩû�б�ǩ��������
 * @author Administrator
 *
 */
public class JstlDemo1 extends SimpleTagSupport{
	
	private PageContext pc;
	private JspFragment body;
	
	/**
	 * ��ǩִ���ˣ�Ĭ�ϵ��ø÷���
	 */
	public void doTag() throws JspException, IOException {
		// ��ҳ�����һ��hello
		// ��ȡout����
		pc.getOut().write("hello");
	}
	
	/**
	 * Tomcat������Ĭ���ȵ��ø÷���
	 */
	public void setJspContext(JspContext pc) {
		this.pc = (PageContext) pc;
	}

	/**
	 * ������Ĭ�ϵ��ø÷�������JspFragment�������ǩ������󣩴������
	 */
	public void setJspBody(JspFragment jspBody) {
		this.body = jspBody;
	}
}





