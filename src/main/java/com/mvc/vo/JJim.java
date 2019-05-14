package com.mvc.vo;

public class JJim {
	String code;
	String id;
	String date;
	String name;
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public JJim(String code, String id, String date, String name) {
		super();
		this.code = code;
		this.id = id;
		this.date = date;
		this.name = name;
	}

	public JJim() {
		super();
	}

	public JJim(String code, String id, String date) {
		super();
		this.code = code;
		this.id = id;
		this.date = date;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "JJim [code=" + code + ", id=" + id + ", date=" + date + "]";
	}
	
	
	
}
