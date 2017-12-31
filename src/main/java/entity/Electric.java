package entity;
// default package

import java.lang.Integer;
import java.util.HashSet;
import java.util.Set;


/**
 * Electric entity. @author MyEclipse Persistence Tools
 */

public class Electric  implements java.io.Serializable {


    // Fields    

     private Integer electricid;
     private Integer television;
     private Integer refrigerator;
     private Integer washingmachine;
     private Integer airconditioner;
     private Integer wifi;
     private Integer heater;
     private Integer gasstove;
     private Integer lampblackmachine;
    /* private Set houses = new HashSet(0);*/


    // Constructors

    /** default constructor */
    public Electric() {
    }

	/** minimal constructor */
    public Electric(Integer electricid) {
        this.electricid = electricid;
    }
    
    /** full constructor */
    public Electric(Integer electricid, Integer television, Integer refrigerator, Integer washingmachine, Integer airconditioner, Integer wifi, Integer heater, Integer gasstove, Integer lampblackmachine) {
        this.electricid = electricid;
        this.television = television;
        this.refrigerator = refrigerator;
        this.washingmachine = washingmachine;
        this.airconditioner = airconditioner;
        this.wifi = wifi;
        this.heater = heater;
        this.gasstove = gasstove;
        this.lampblackmachine = lampblackmachine;
       /* this.houses = houses;*/
    }

   
    // Property accessors

    public Integer getElectricid() {
        return this.electricid;
    }
    
    public void setElectricid(Integer electricid) {
        this.electricid = electricid;
    }

    public Integer getTelevision() {
        return this.television;
    }
    
    public void setTelevision(Integer television) {
        this.television = television;
    }

    public Integer getRefrigerator() {
        return this.refrigerator;
    }
    
    public void setRefrigerator(Integer refrigerator) {
        this.refrigerator = refrigerator;
    }

    public Integer getWashingmachine() {
        return this.washingmachine;
    }
    
    public void setWashingmachine(Integer washingmachine) {
        this.washingmachine = washingmachine;
    }

    public Integer getAirconditioner() {
        return this.airconditioner;
    }
    
    public void setAirconditioner(Integer airconditioner) {
        this.airconditioner = airconditioner;
    }

    public Integer getWifi() {
        return this.wifi;
    }
    
    public void setWifi(Integer wifi) {
        this.wifi = wifi;
    }

    public Integer getHeater() {
        return this.heater;
    }
    
    public void setHeater(Integer heater) {
        this.heater = heater;
    }

    public Integer getGasstove() {
        return this.gasstove;
    }
    
    public void setGasstove(Integer gasstove) {
        this.gasstove = gasstove;
    }

    public Integer getLampblackmachine() {
        return this.lampblackmachine;
    }
    
    public void setLampblackmachine(Integer lampblackmachine) {
        this.lampblackmachine = lampblackmachine;
    }

   /* public Set getHouses() {
        return this.houses;
    }
    
    public void setHouses(Set houses) {
        this.houses = houses;
    }*/
   








}