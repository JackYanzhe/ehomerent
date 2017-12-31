package filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import redis.clients.jedis.Jedis;

import util.RedisPoolUtil;
import util.ResponseWrapper;

public class CacheFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		
		//强转为httpServletRequest（向下转型）
		HttpServletRequest httpRequest=(HttpServletRequest) request;
		HttpServletResponse httpResponse=(HttpServletResponse) response;
		//获取请求的uri()
		String uri=httpRequest.getRequestURI();
		//System.out.println(uri);
		//截取请求uri,使之成为我门想要的uri请求
		String uri2=uri.substring(uri.indexOf("/", 1),uri.length());
	    System.out.println(uri2);
	    String id = httpRequest.getParameter("id");
	    uri2=uri2+"?id="+id;
		//调用构造方法实例化responseWrapper对象，目的在于实例化PrintWriter pw和CharArrayWriter caw对象，
		//为调用rWrapper.getResult()做准备
		
		ResponseWrapper rWrapper=new ResponseWrapper(httpResponse);
		rWrapper.setContentType("text/html;charset=UTF-8");
		rWrapper.setCharacterEncoding("UTF-8");
		//使用redis连接池的方式获取jedis
		  Jedis jedis=	RedisPoolUtil.getJedis();
		  //实例化得到PrintWriter对象out,为之后的写入做准备
		  PrintWriter out=httpResponse.getWriter();
		  //调用redis中的缓存数据，键值为uri2
		   String val=jedis.get(uri2);
		   
		   //进入判断，如果为首次进入，则val为null,此时进入dofilter（）,并将result结果作为值放入redis缓存中
		   //如果val不为null，则说明redis中存在值，此时不经过dofilter（）方法，直接将val写入即可，out.write(val);
			if(val!=null){
				  //System.out.println("!!!val:"+val);
				System.out.println("***********redis缓存已存在****************");
				out.write(val);
				
			}else {
				chain.doFilter(request, rWrapper);
				String result=rWrapper.getResult();
				System.out.println("----------设置redis缓存----------");
				//设置redis缓存，key:uri2  value:result
				jedis.set(uri2, result);
				//写入result
				out.write(result);
				
			}
			out.flush();
			out.close();
			jedis.close();
	
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
