package entity;

// default package

import java.util.HashSet;
import java.util.Set;

/**
 * Houseimg entity. @author MyEclipse Persistence Tools
 */

public class Houseimg implements java.io.Serializable {

	// Fields

	private Long houseimgid;
	private String imgurl1;
	private String imgurl2;
	private String imgurl3;
	private String imgurl4;
	private String imgurl5;
	private String imgurl6;
	private String imgurl7;
	private String imgurl8;
	private String imgurl9;
	private String imgurl10;
	/*private Set houses = new HashSet(0);*/

	// Constructors

	/** default constructor */
	public Houseimg() {
	}

	/** minimal constructor */
	public Houseimg(Long houseimgid) {
		this.houseimgid = houseimgid;
	}

	/** full constructor */
	public Houseimg(Long houseimgid, String imgurl1, String imgurl2,
			String imgurl3, String imgurl4, String imgurl5, String imgurl6,
			String imgurl7, String imgurl8, String imgurl9, String imgurl10,
			Set houses) {
		this.houseimgid = houseimgid;
		this.imgurl1 = imgurl1;
		this.imgurl2 = imgurl2;
		this.imgurl3 = imgurl3;
		this.imgurl4 = imgurl4;
		this.imgurl5 = imgurl5;
		this.imgurl6 = imgurl6;
		this.imgurl7 = imgurl7;
		this.imgurl8 = imgurl8;
		this.imgurl9 = imgurl9;
		this.imgurl10 = imgurl10;
		/*this.houses = houses;*/
	}

	// Property accessors

	public Long getHouseimgid() {
		return this.houseimgid;
	}

	public void setHouseimgid(Long houseimgid) {
		this.houseimgid = houseimgid;
	}

	public String getImgurl1() {
		return this.imgurl1;
	}

	public void setImgurl1(String imgurl1) {
		this.imgurl1 = imgurl1;
	}

	public String getImgurl2() {
		return this.imgurl2;
	}

	public void setImgurl2(String imgurl2) {
		this.imgurl2 = imgurl2;
	}

	public String getImgurl3() {
		return this.imgurl3;
	}

	public void setImgurl3(String imgurl3) {
		this.imgurl3 = imgurl3;
	}

	public String getImgurl4() {
		return this.imgurl4;
	}

	public void setImgurl4(String imgurl4) {
		this.imgurl4 = imgurl4;
	}

	public String getImgurl5() {
		return this.imgurl5;
	}

	public void setImgurl5(String imgurl5) {
		this.imgurl5 = imgurl5;
	}

	public String getImgurl6() {
		return this.imgurl6;
	}

	public void setImgurl6(String imgurl6) {
		this.imgurl6 = imgurl6;
	}

	public String getImgurl7() {
		return this.imgurl7;
	}

	public void setImgurl7(String imgurl7) {
		this.imgurl7 = imgurl7;
	}

	public String getImgurl8() {
		return this.imgurl8;
	}

	public void setImgurl8(String imgurl8) {
		this.imgurl8 = imgurl8;
	}

	public String getImgurl9() {
		return this.imgurl9;
	}

	public void setImgurl9(String imgurl9) {
		this.imgurl9 = imgurl9;
	}

	public String getImgurl10() {
		return this.imgurl10;
	}

	public void setImgurl10(String imgurl10) {
		this.imgurl10 = imgurl10;
	}

	/*public Set getHouses() {
		return this.houses;
	}

	public void setHouses(Set houses) {
		this.houses = houses;
	}*/

}