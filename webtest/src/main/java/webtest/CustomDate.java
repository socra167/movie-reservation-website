package webtest;
import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class CustomDate extends SimpleTagSupport {
	   public void doTag() throws JspException, IOException {
		      /*This is just to display a message, when
		       * we will use our custom tag. This message
		       * would be displayed
		       */
		      JspWriter out = getJspContext().getOut();
		      out.println("12월");
		   }
}
