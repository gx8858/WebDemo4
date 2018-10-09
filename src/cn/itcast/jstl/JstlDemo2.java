package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class JstlDemo2 extends SimpleTagSupport{
	
	private PageContext pc;
	// �����ǩ����
	private JspFragment jspBody;
	
	/**
	 * �����ø÷�����Ŀ�ģ������ǩ����
	 */
	public void doTag() throws JspException, IOException {
		// ֱ�ӵ���JspFragment��invoke(Writer out) ����ǩ�����������
		jspBody.invoke(pc.getOut());
	}

	public void setJspContext(JspContext pc) {
		this.pc = (PageContext) pc;
	}

	public void setJspBody(JspFragment jspBody) {
		this.jspBody = jspBody;
	}
}
