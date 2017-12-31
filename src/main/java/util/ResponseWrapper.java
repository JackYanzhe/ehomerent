package util;

import java.io.CharArrayWriter;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
public class ResponseWrapper extends HttpServletResponseWrapper{
    //工具类
	
	private PrintWriter pw;
	private CharArrayWriter caw;
	public ResponseWrapper(HttpServletResponse response) {
	
		super(response);
		caw=new CharArrayWriter();
		pw=new PrintWriter(caw);
		
	}
	//重写父类的父类的getWrite()方法
	@Override
   public PrintWriter getWriter(){
			return this.pw;
   }
	//获取response返回的字符串
	public String getResult(){
		
		
		//""里面的参数为需要转化的编码，一般是ISO8859-1
		byte[] byteArr;
		try {
			byteArr = caw.toString().getBytes("UTF-8");
			return new String(byteArr, "UTF-8");
		} catch (UnsupportedEncodingException e1) {
			return "";
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
