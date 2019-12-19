package cn.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("order")
public class Order implements Serializable {
	private static final long serialVersionUID = 278351477334452565L;
	private Integer id;
	private String pay_id;// pay_id=ice_phone_shopid_ordercount_6随机
	private String userphone;
	private Integer paytype;
	private Integer ordercount;
	private String shopname;
	private Double shopprice;
	private Double orderprice;
	private String usersay;
	private String pay_no;
	private Integer orderstatus;
	private String ordertime;
	private String paytime;
	private String finishtime;
	private Double money;
	private Integer shopid;
	private Shop shop;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPay_id() {
		return pay_id;
	}

	public void setPay_id(String pay_id) {
		this.pay_id = pay_id;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public Integer getPaytype() {
		return paytype;
	}

	public void setPaytype(Integer paytype) {
		this.paytype = paytype;
	}

	public Integer getOrdercount() {
		return ordercount;
	}

	public void setOrdercount(Integer ordercount) {
		this.ordercount = ordercount;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public Double getShopprice() {
		return shopprice;
	}

	public void setShopprice(Double shopprice) {
		this.shopprice = shopprice;
	}

	public Double getOrderprice() {
		return orderprice;
	}

	public void setOrderprice(Double orderprice) {
		this.orderprice = orderprice;
	}

	public String getUsersay() {
		return usersay;
	}

	public void setUsersay(String usersay) {
		this.usersay = usersay;
	}

	public String getPay_no() {
		return pay_no;
	}

	public void setPay_no(String pay_no) {
		this.pay_no = pay_no;
	}

	public Integer getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(Integer orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(String ordertime) {
		this.ordertime = ordertime;
	}

	public String getPaytime() {
		return paytime;
	}

	public void setPaytime(String paytime) {
		this.paytime = paytime;
	}

	public String getFinishtime() {
		return finishtime;
	}

	public void setFinishtime(String finishtime) {
		this.finishtime = finishtime;
	}

	public Double getMoney() {
		return money;
	}

	public void setMoney(Double money) {
		this.money = money;
	}

	public Integer getShopid() {
		return shopid;
	}

	public void setShopid(Integer shopid) {
		this.shopid = shopid;
	}

	public Shop getShop() {
		return shop;
	}

	public void setShop(Shop shop) {
		this.shop = shop;
	}

	@Override
	public String toString() {
		return "Order [id=" + id + ", pay_id=" + pay_id + ", userphone=" + userphone + ", paytype=" + paytype
				+ ", ordercount=" + ordercount + ", shopname=" + shopname + ", shopprice=" + shopprice + ", orderprice="
				+ orderprice + ", usersay=" + usersay + ", pay_no=" + pay_no + ", orderstatus=" + orderstatus
				+ ", ordertime=" + ordertime + ", paytime=" + paytime + ", finishtime=" + finishtime + ", money="
				+ money + ", shopid=" + shopid + ", shop=" + shop + "]";
	}


}
