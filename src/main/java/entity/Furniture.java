package entity;
// default package

import java.lang.Integer;
import java.util.HashSet;
import java.util.Set;


/**
 * Furniture entity. @author MyEclipse Persistence Tools
 */

public class Furniture  implements java.io.Serializable {


    // Fields    

     private Integer furnitureid;
     private Integer bed;
     private Integer landlordask;
     private Integer wardrobe;
     private Integer chair;
     private Integer desk;
     private Integer teatable;
     private Integer diningtable;
     private Integer cupboard;
     private Integer kitchenware;
    /* private Set houses = new HashSet(0);*/


    // Constructors

    /** default constructor */
    public Furniture() {
    }

	/** minimal constructor */
    public Furniture(Integer furnitureid) {
        this.furnitureid = furnitureid;
    }
    
    /** full constructor */
    public Furniture(Integer furnitureid, Integer bed, Integer landlordask, Integer wardrobe, Integer chair, Integer desk, Integer teatable, Integer diningtable, Integer cupboard, Integer kitchenware) {
        this.furnitureid = furnitureid;
        this.bed = bed;
        this.landlordask = landlordask;
        this.wardrobe = wardrobe;
        this.chair = chair;
        this.desk = desk;
        this.teatable = teatable;
        this.diningtable = diningtable;
        this.cupboard = cupboard;
        this.kitchenware = kitchenware;
        /*this.houses = houses;*/
    }

   
    // Property accessors

    public Integer getFurnitureid() {
        return this.furnitureid;
    }
    
    public void setFurnitureid(Integer furnitureid) {
        this.furnitureid = furnitureid;
    }

    public Integer getBed() {
        return this.bed;
    }
    
    public void setBed(Integer bed) {
        this.bed = bed;
    }

    public Integer getLandlordask() {
        return this.landlordask;
    }
    
    public void setLandlordask(Integer landlordask) {
        this.landlordask = landlordask;
    }

    public Integer getWardrobe() {
        return this.wardrobe;
    }
    
    public void setWardrobe(Integer wardrobe) {
        this.wardrobe = wardrobe;
    }

    public Integer getChair() {
        return this.chair;
    }
    
    public void setChair(Integer chair) {
        this.chair = chair;
    }

    public Integer getDesk() {
        return this.desk;
    }
    
    public void setDesk(Integer desk) {
        this.desk = desk;
    }

    public Integer getTeatable() {
        return this.teatable;
    }
    
    public void setTeatable(Integer teatable) {
        this.teatable = teatable;
    }

    public Integer getDiningtable() {
        return this.diningtable;
    }
    
    public void setDiningtable(Integer diningtable) {
        this.diningtable = diningtable;
    }

    public Integer getCupboard() {
        return this.cupboard;
    }
    
    public void setCupboard(Integer cupboard) {
        this.cupboard = cupboard;
    }

    public Integer getKitchenware() {
        return this.kitchenware;
    }
    
    public void setKitchenware(Integer kitchenware) {
        this.kitchenware = kitchenware;
    }

   /* public Set getHouses() {
        return this.houses;
    }
    
    public void setHouses(Set houses) {
        this.houses = houses;
    }*/
   








}