package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class JstlDemo2 extends SimpleTagSupport{
	
	private PageContext pc;
	// 代表标签主体
	private JspFragment jspBody;
	
	/**
	 * 最后调用该方法，目的：输出标签主体
	 */
	public void doTag() throws JspException, IOException {
		// 直接调用JspFragment的invoke(Writer out) ，标签主体向外输出
		jspBody.invoke(pc.getOut());
	}

	public void setJspContext(JspContext pc) {
		this.pc = (PageContext) pc;
	}

	public void setJspBody(JspFragment jspBody) {
		this.jspBody = jspBody;
	}
}
