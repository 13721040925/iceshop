package cn.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("shop")
public class Shop implements Serializable {
	private static final long serialVersionUID = 1332994136461814569L;
	private Integer id;
	private String name;
	private String pic;
	private Double price;
	private Integer count;
	private String details;
	private Integer salecount;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public Integer getSalecount() {
		return salecount;
	}

	public void setSalecount(Integer salecount) {
		this.salecount = salecount;
	}

	@Override
	public String toString() {
		return "Shop [id=" + id + ", name=" + name + ", pic=" + pic + ", price=" + price + ", count=" + count
				+ ", details=" + details + ", salecount=" + salecount + "]";
	}


}
