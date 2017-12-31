package dao.daoImpl;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import sun.print.PageableDoc;

import dao.ContractDao;
import dao.quickrentDao;
import entity.Contract;
import entity.House;
import entity.MonthPayCondition;
import entity.Pape;

public class quickrentDaoImpl implements quickrentDao {
	private SessionFactory sessionFactory;
	
  public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	/**
	 * 多条件查询总条数
	 */
	@Override
	public int manySearchTol(House house, MonthPayCondition mpc) {
		Session session=sessionFactory.getCurrentSession();
		   StringBuffer sb=new StringBuffer();
		   sb.append("select count(*)  from  House where 1=1 ");
		   /**
		    * 当租住时间不为空时,动态插入语句
		    */
		   if(house.getRenttype()!=null&&house.getRenttype().equals("不限")==false)
		   {
			     sb.append(" and renttype = '"+ house.getRenttype()+"' ");
			   
		   }
		   /**
		    * 当户型不为空时,动态插入语句
		    */
		   if(house.getHousetype()!=null&&house.getHousetype().equals("不限")==false)
		   {
			   sb.append(" and housetype= '"+house.getHousetype()+"' ");
		   }
		   /**
		    * 当租金不为空时,动态插入语句
		    */
		  /* if(house.getMonthpay()!=null )
		   {*/
			   /**
			    * 当选择价格为大于最低价格时，Monthpaymin应有值
			    * 当选择价格为小于最高价格时，Monthpaymax应有值
			    */
			      if(mpc.getMonthpaymin()>=0)
			       {
				   sb.append(" and monthpay > '"+mpc.getMonthpaymin()+"' ");
			       }
		     	if(mpc.getMonthpaymax()!=0)
		     	{
			   sb.append(" and monthpay< '"+mpc.getMonthpaymax()+"' ");
			     }
		     
		   /*}*/
		   
			  /**
	 	    * 当租住类型不为空时,动态插入语句
	 	    */
		    if(house.getQuicktype()!=null&&house.getQuicktype().equals("不限")==false)
		    {
		    	sb.append(" and quicktype ='"+house.getQuicktype()+"' ");
		    }
			System.out.println("================================="+sb.toString());
		
			Query query=session.createQuery(sb.toString());
		
			/*System.out.println("================="+house.getRenttype());*/
			query.setProperties(house);
			int num=Integer.valueOf(query.uniqueResult().toString());
			System.out.println("****************"+num);
			return num;
	}
	  
	   /**
	    * 单元测试多条件查询出的信息条数
	    */
	   @Test
      	 public void  text2(){
	  	              ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
	  	              quickrentDao quickrentDao=(dao.quickrentDao) ac.getBean("quickrentDao");
	  	        	House house1=new House();
	  	  /*		house1.setRenttype("年租");
	  	  		house1.setMonthpay(2000.00);*/
	  	  		MonthPayCondition mpc1=new MonthPayCondition();
	  	  		//house1.setHousetype("三室一厅一卫");
	  	  		house1.setQuicktype("合租");
	  	              int num=quickrentDao.manySearchTol(house1, mpc1);
	  	              System.out.println("=========条数===="+num);
		 
	      }
/**
 * 分页显示信息
 */
	@Override
	public Pape<House> findPageHouse(int pageNo, int pageSize, House house,
			MonthPayCondition mpc) {
	         Session session=sessionFactory.getCurrentSession();
	         Pape<House> page=new Pape<House>();
	       /**
	        * 当前页
	        */
	         page.setPageNo(pageNo);
	         /**
	          * 每页几条
	          */
	         page.setPageSize(pageSize);
	         int rnum=this.manySearchTol(house, mpc);
	       /**
	        * 总共几页信息
	        */
	         page.setRowSize(rnum);
	         StringBuffer sb=new StringBuffer();
			   sb.append("  from  House where 1=1 ");
			   /**
			    * 当租住时间不为空时,动态插入语句
			    */
			   if(house.getRenttype()!=null&&house.getRenttype().equals("不限")==false)
			   {
				     sb.append(" and renttype = '"+ house.getRenttype()+"' ");
				   
			   }
			   /**
			    * 当户型不为空时,动态插入语句
			    */
			   if(house.getHousetype()!=null&&house.getHousetype().equals("不限")==false)
			   {
				   sb.append(" and housetype= '"+house.getHousetype()+"' ");
			   }
			   /**
			    * 当租金不为空时,动态插入语句
			    */
			  /* if(house.getMonthpay()!=null)
			   {*/
				   /**
				    * 当选择价格为大于最低价格时，Monthpaymin应有值
				    * 当选择价格为小于最高价格时，Monthpaymax应有值
				    */
			  if(mpc.getMonthpaymin()>=0)
				  {
					   sb.append(" and monthpay > '"+mpc.getMonthpaymin()+"' ");
				       }
			  if(mpc.getMonthpaymax()!=0)
				  {
					       sb.append(" and monthpay< '"+mpc.getMonthpaymax()+"' ");
					     }
			  /*   
			   }*/
			   
				  /**
		 	    * 当租住类型不为空时,动态插入语句
		 	    */
			    if(house.getQuicktype()!=null&&house.getQuicktype().equals("不限")==false)
			    {
			    	sb.append(" and quicktype ='"+house.getQuicktype()+"' ");
			    }
				System.out.println("================================="+sb.toString());
			
				Query query=session.createQuery(sb.toString());
			
				System.out.println("================="+house.getRenttype());
				query.setProperties(house);
	         List<House> list=query.setFirstResult(pageSize*(pageNo-1)).setMaxResults(pageSize).list();	
	 		page.setPageList(list);
	    	return page;
	}
	   /**
	    * 测试查询分页
	    */
	   @Test
	     public void test3(){
	    	    ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
	    	    quickrentDao quickrentDao=(dao.quickrentDao) ac.getBean("quickrentDao");
	    		House house = new House();
	    		MonthPayCondition mpc=new MonthPayCondition();
	    		Pape<House> list= quickrentDao.findPageHouse(2, 2, house, mpc);
	    		for (House house1 : list.getPageList()) {
	    			System.out.println(house1.getHouseadress()+","+house1.getHousetype()
	    					);
	    		}		
	    	/*	House house1=new House();
	    		house1.setRenttype("年租");
	    		house1.setMonthpay(2000.00);
	    		MonthPayCondition mpc1=new MonthPayCondition(1000.00,5000.00);
	    		//house1.setHousetype("三室一厅一卫");
	    		house1.setQuicktype("合租");*/
	     }
}
