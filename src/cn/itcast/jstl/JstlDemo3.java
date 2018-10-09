package cn.itcast.jstl;

import java.io.IOException;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 * �Զ����ǩ�����б�ǩ���壬�������ԣ�
 * @author Administrator
 *
 */
public class JstlDemo3 extends SimpleTagSupport{
	
	private PageContext pc;
	// �����ǩ����
	private JspFragment jspBody;
	// test��JSPҳ���ϵ�if test�������Ʊ�������ͬ��
	//�����������ṩtest���Ե�set����
	private boolean test;
	public void setTest(boolean test) {
		this.test = test;
	}
	
	/**
	 * �����ø÷�����Ŀ�ģ������ǩ���壬�������Ծ���
	 */
	public void doTag() throws JspException, IOException {
		// ֱ�ӵ���JspFragment��invoke(Writer out) ����ǩ�����������
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
