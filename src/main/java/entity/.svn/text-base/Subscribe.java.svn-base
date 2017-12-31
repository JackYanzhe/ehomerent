package entity;
import entity.User;

// default package



/**
 * Subscribe entity. @author MyEclipse Persistence Tools
 */

public class Subscribe  implements java.io.Serializable {


    // Fields    

     private Long subscribeid;  //订阅信息id
     private User user;  //用户对象，对应用户外键
     private Double rentmoneymax;  //最大租金上限
     private Double rentmoneymin;  //最小租金下限
     private String circletime;   //周期长短
     private String renttype; //租住类型：整租、分租、单间、床位
     private String subsubmitdate;//订阅提交时间
     private String housetype;   //房屋户型   1、2、3、3户以上
     private String subarealocalinfo;//需要的房屋位置信息
     


    // Constructors

    /** default constructor */
    public Subscribe() {
    }

	/** minimal constructor */
    public Subscribe(Long subscribeid) {
        this.subscribeid = subscribeid;
    }
    
    /** full constructor */
    public Subscribe(Long subscribeid, User user, Double rentmoneymax,
			Double rentmoneymin, String circletime, String renttype,
			String subsubmitdate, String housetype, String subarealocalinfo) {
		
		this.subscribeid = subscribeid;
		this.user = user;
		this.rentmoneymax = rentmoneymax;
		this.rentmoneymin = rentmoneymin;
		this.circletime = circletime;
		this.renttype = renttype;
		this.subsubmitdate = subsubmitdate;
		this.housetype = housetype;
		this.subarealocalinfo = subarealocalinfo;
	}
    
    
   
    public Subscribe(Long subscribeid, User user, Double rentmoneymax,
			Double rentmoneymin, String circletime, String renttype,
			String housetype, String subarealocalinfo) {
		
		this.subscribeid = subscribeid;
		this.user = user;
		this.rentmoneymax = rentmoneymax;
		this.rentmoneymin = rentmoneymin;
		this.circletime = circletime;
		this.renttype = renttype;
		this.housetype = housetype;
		this.subarealocalinfo = subarealocalinfo;
	}

	// Property accessors

   
	public Long getSubscribeid() {
        return this.subscribeid;
    }
    
   

	

	public void setSubscribeid(Long subscribeid) {
        this.subscribeid = subscribeid;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Double getRentmoneymax() {
        return this.rentmoneymax;
    }
    
    public void setRentmoneymax(Double rentmoneymax) {
        this.rentmoneymax = rentmoneymax;
    }

    public Double getRentmoneymin() {
        return this.rentmoneymin;
    }
    
    public void setRentmoneymin(Double rentmoneymin) {
        this.rentmoneymin = rentmoneymin;
    }

    public String getCircletime() {
        return this.circletime;
    }
    
    public void setCircletime(String circletime) {
        this.circletime = circletime;
    }

    public String getRenttype() {
        return this.renttype;
    }
    
    public void setRenttype(String renttype) {
        this.renttype = renttype;
    }

	public String getSubsubmitdate() {
		return subsubmitdate;
	}

	public void setSubsubmitdate(String subsubmitdate) {
		this.subsubmitdate = subsubmitdate;
	}

	public String getHousetype() {
		return housetype;
	}

	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}

	public String getSubarealocalinfo() {
		return subarealocalinfo;
	}

	public void setSubarealocalinfo(String subarealocalinfo) {
		this.subarealocalinfo = subarealocalinfo;
	}
   








}