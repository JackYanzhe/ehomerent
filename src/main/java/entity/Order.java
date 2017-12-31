package entity;

import java.util.Date;

/**
 * TbOrder entity. @author MyEclipse Persistence Tools
 */

public class Order implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Contract contract;
	private House house;
	private Double totalprice;
	private Integer orderstatus;
	private Date orderdate;
	private Integer renttime;
	private User user;
	
	// Constructors

	/** default constructor */
	public Order() {
		super();
	}


	public Order(Integer orderid, House house, Double totalprice,
			Integer orderstatus, Date orderdate, Integer renttime, User user) {
		super();
		this.orderid = orderid;
		this.house = house;
		this.totalprice = totalprice;
		this.orderstatus = orderstatus;
		this.orderdate = orderdate;
		this.renttime = renttime;
		this.user = user;
	}


	/** minimal constructor */
	
	public Order(Integer orderid) {
		super();
		this.orderid = orderid;
	}


	
	/** full constructor */
	

	public Order(Integer orderid, Contract contract, House house,
			Double totalprice, Integer orderstatus, Date orderdate,
			Integer renttime) {
		super();
		this.orderid = orderid;
		this.contract = contract;
		this.house = house;
		this.totalprice = totalprice;
		this.orderstatus = orderstatus;
		this.orderdate = orderdate;
		this.renttime = renttime;
	}

	// Property accessors

	public Integer getOrderid() {
		return orderid;
	}


	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}


	public Contract getContract() {
		return contract;
	}


	public void setContract(Contract contract) {
		this.contract = contract;
	}


	public House getHouse() {
		return house;
	}


	public void setHouse(House house) {
		this.house = house;
	}


	public Double getTotalprice() {
		return totalprice;
	}


	public void setTotalprice(Double totalprice) {
		
		this.totalprice = totalprice;
	}


	public Integer getOrderstatus() {
		return orderstatus;
	}


	public void setOrderstatus(Integer orderstatus) {
		this.orderstatus = orderstatus;
	}


	public Date getOrderdate() {
		return orderdate;
	}


	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}


	public Integer getRenttime() {
		return renttime;
	}


	public void setRenttime(Integer renttime) {
		this.renttime = renttime;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}



	
	

}