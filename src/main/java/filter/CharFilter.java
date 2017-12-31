package filter;


import java.io.IOException;


import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharFilter implements Filter{
	private String encoding;
	@Override
	public void init(FilterConfig filterconfig) throws ServletException {
		encoding=filterconfig.getInitParameter("Encoding");
		//System.out.println(encoding+"*******初始值encoding*************");
		
	}

	

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		//System.out.println(encoding+"---------------------------------------");
		request.setCharacterEncoding(encoding);
		response.setCharacterEncoding(encoding);
		response.setContentType("text/html;charset="+encoding);
		//System.out.println(encoding+"*******过滤*************");
		//System.out.println("**************Filter1111111111111111111111111111111111*******************");
		chain.doFilter(request, response);
		
		
		
		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	

}
