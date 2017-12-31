package entity;
// default package

import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;


/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House  implements java.io.Serializable {

     private Integer houseinfoid;//房源编号
     private Furniture furniture;//家具
     private Houseimg houseimg;//房屋照片
     private User user;//房东
     private Collection collection;
     private Electric electric;//家电
     private String housetype;//房源户型（单间（公卫）0，单间（独卫）1，一室一厅一卫2）
     private String renttype;//出租类型（月租0，年租1）
     private String paytype;//付款方式（押一付一0，押一付三1，年付2）
     private Double acreage;//房屋面积
     private String houseadress;//小区名称
     private Double monthpay;//租金
     private String housingtime;//可入住时间
     private Integer hspersonnum;//可入住人数
     private String floor;//楼层
     private String hsdecorationrank;//装修程度（简装0，中装1，精装2）
     private String hsdecoration;//房屋朝向（东0，西1，南2，北3）
     private Charge charge;//费用详情
     private String location;//位置详情
     private String landlordwordsent;//房东寄语
     private String landlordask;//对租客要求
     private String quicktype;//出租类型
    /* @JsonIgnore
     private Set orders = new HashSet(0);*/


    // Constructors

    /** default constructor */
    public House() {
    }

	public House(Integer houseinfoid) {
		super();
		this.houseinfoid = houseinfoid;
	}

	/** minimal constructor */
    public House(Integer houseinfoid, String landlordwordsent, String landlordask) {
        this.houseinfoid = houseinfoid;
        this.landlordwordsent = landlordwordsent;
        this.landlordask = landlordask;
    }

	public Integer getHouseinfoid() {
		return houseinfoid;
	}

	public void setHouseinfoid(Integer houseinfoid) {
		this.houseinfoid = houseinfoid;
	}

	public Furniture getFurniture() {
		return furniture;
	}

	public void setFurniture(Furniture furniture) {
		this.furniture = furniture;
	}

	public Houseimg getHouseimg() {
		return houseimg;
	}

	public void setHouseimg(Houseimg houseimg) {
		this.houseimg = houseimg;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Collection getCollection() {
		return collection;
	}

	public void setCollection(Collection collection) {
		this.collection = collection;
	}

	public Electric getElectric() {
		return electric;
	}

	public void setElectric(Electric electric) {
		this.electric = electric;
	}

	public String getHousetype() {
		return housetype;
	}

	public void setHousetype(String housetype) {
		this.housetype = housetype;
	}

	public String getRenttype() {
		return renttype;
	}

	public void setRenttype(String renttype) {
		this.renttype = renttype;
	}

	public String getPaytype() {
		return paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	public Double getAcreage() {
		return acreage;
	}

	public void setAcreage(Double acreage) {
		this.acreage = acreage;
	}

	public String getHouseadress() {
		return houseadress;
	}

	public void setHouseadress(String houseadress) {
		this.houseadress = houseadress;
	}

	public Double getMonthpay() {
		return monthpay;
	}

	public void setMonthpay(Double monthpay) {
		this.monthpay = monthpay;
	}

	public String getHousingtime() {
		return housingtime;
	}

	public void setHousingtime(String housingtime) {
		this.housingtime = housingtime;
	}

	public Integer getHspersonnum() {
		return hspersonnum;
	}

	public void setHspersonnum(Integer hspersonnum) {
		this.hspersonnum = hspersonnum;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getHsdecorationrank() {
		return hsdecorationrank;
	}

	public void setHsdecorationrank(String hsdecorationrank) {
		this.hsdecorationrank = hsdecorationrank;
	}

	public String getHsdecoration() {
		return hsdecoration;
	}

	public void setHsdecoration(String hsdecoration) {
		this.hsdecoration = hsdecoration;
	}

	public Charge getCharge() {
		return charge;
	}

	public void setCharge(Charge charge) {
		this.charge = charge;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLandlordwordsent() {
		return landlordwordsent;
	}

	public void setLandlordwordsent(String landlordwordsent) {
		this.landlordwordsent = landlordwordsent;
	}

	public String getLandlordask() {
		return landlordask;
	}

	public void setLandlordask(String landlordask) {
		this.landlordask = landlordask;
	}

	public String getQuicktype() {
		return quicktype;
	}

	public void setQuicktype(String quicktype) {
		this.quicktype = quicktype;
	}

	/*public Set getOrders() {
		return orders;
	}

	public void setOrders(Set orders) {
		this.orders = orders;
	}*/

	public House(Integer houseinfoid, Furniture furniture, Houseimg houseimg,
			User user, Collection collection, Electric electric,
			String housetype, String renttype, String paytype,
			Double acreage, String houseadress, Double monthpay,
			String housingtime, Integer hspersonnum, String floor,
			String hsdecorationrank, String hsdecoration, Charge charge,
			String location, String landlordwordsent, String landlordask,
			String quicktype) {
		super();
		this.houseinfoid = houseinfoid;
		this.furniture = furniture;
		this.houseimg = houseimg;
		this.user = user;
		this.collection = collection;
		this.electric = electric;
		this.housetype = housetype;
		this.renttype = renttype;
		this.paytype = paytype;
		this.acreage = acreage;
		this.houseadress = houseadress;
		this.monthpay = monthpay;
		this.housingtime = housingtime;
		this.hspersonnum = hspersonnum;
		this.floor = floor;
		this.hsdecorationrank = hsdecorationrank;
		this.hsdecoration = hsdecoration;
		this.charge = charge;
		this.location = location;
		this.landlordwordsent = landlordwordsent;
		this.landlordask = landlordask;
		this.quicktype = quicktype;
		/*this.orders = orders;*/
	}



	
    
  

}