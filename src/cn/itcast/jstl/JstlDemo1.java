package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * 标签没有标签主体内容
 * @author Administrator
 *
 */
public class JstlDemo1 extends SimpleTagSupport{
	
	private PageContext pc;
	private JspFragment body;
	
	/**
	 * 标签执行了，默认调用该方法
	 */
	public void doTag() throws JspException, IOException {
		// 向页面输出一句hello
		// 获取out对象
		pc.getOut().write("hello");
	}
	
	/**
	 * Tomcat服务器默认先调用该方法
	 */
	public void setJspContext(JspContext pc) {
		this.pc = (PageContext) pc;
	}

	/**
	 * 服务器默认调用该方法，把JspFragment（代表标签主体对象）传入进来
	 */
	public void setJspBody(JspFragment jspBody) {
		this.body = jspBody;
	}
}





