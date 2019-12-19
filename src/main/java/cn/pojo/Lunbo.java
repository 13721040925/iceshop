package cn.pojo;

import java.io.Serializable;

import org.springframework.stereotype.Component;

@Component("lunbo")
public class Lunbo implements Serializable {
	private static final long serialVersionUID = 8008001400044825114L;
	private Integer id;
	private String pic;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	@Override
	public String toString() {
		return "Lunbo [id=" + id + ", pic=" + pic + "]";
	}

}
