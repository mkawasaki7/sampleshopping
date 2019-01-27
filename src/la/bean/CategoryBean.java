package la.bean;

import java.io.Serializable;

public class CategoryBean implements Serializable{
	private int code;
	private String name;

	public CategoryBean(int code, String name) {
		this.code = code;
		this.name = name;
	}
	public CategoryBean() {

	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
