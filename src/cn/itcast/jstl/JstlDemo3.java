package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 自定义标签（带有标签主体，还有属性）
 * @author Administrator
 *
 */
public class JstlDemo3 extends SimpleTagSupport{
	
	private PageContext pc;
	// 代表标签主体
	private JspFragment jspBody;
	// test和JSP页面上的if test属性名称必须是相同的
	//　你必须给我提供test属性的set方法
	private boolean test;
	public void setTest(boolean test) {
		this.test = test;
	}
	
	/**
	 * 最后调用该方法，目的：输出标签主体，由于属性决定
	 */
	public void doTag() throws JspException, IOException {
		// 直接调用JspFragment的invoke(Writer out) ，标签主体向外输出
		if(test){
			jspBody.invoke(pc.getOut());
		}
	}
	
	public void setJspContext(JspContext pc) {
		this.pc = (PageContext) pc;
	}

	public void setJspBody(JspFragment jspBody) {
		this.jspBody = jspBody;
	}
}
