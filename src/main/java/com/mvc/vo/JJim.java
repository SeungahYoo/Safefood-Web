package com.mvc.vo;

public class JJim {
	String code;
	String id;
	String date;
	String name;
	double total_calory;//nutr_cont1
	double total_carbo;//nutr_cont2
	double total_protein;//nutr_cont3
	double total_fat;//nutr_cont4
	double total_sugar;//nutr_cont5
	double total_natrium;//nutr_cont6
	double total_chole;//nutr_cont7
	double total_fattyacid;//nutr_cont8
	double total_transfat;//nutr_cont9
	
	public JJim(String code, String id, String date, String name, double total_calory, double total_carbo,
			double total_protein, double total_fat, double total_sugar, double total_natrium, double total_chole,
			double total_fattyacid, double total_transfat) {
		super();
		this.code = code;
		this.id = id;
		this.date = date;
		this.name = name;
		this.total_calory = total_calory;
		this.total_carbo = total_carbo;
		this.total_protein = total_protein;
		this.total_fat = total_fat;
		this.total_sugar = total_sugar;
		this.total_natrium = total_natrium;
		this.total_chole = total_chole;
		this.total_fattyacid = total_fattyacid;
		this.total_transfat = total_transfat;
	}
	
	public JJim(double total_calory, double total_carbo, double total_protein, double total_fat, double total_sugar,
			double total_natrium, double total_chole, double total_fattyacid, double total_transfat) {
		this.total_calory = total_calory;
		this.total_carbo = total_carbo;
		this.total_protein = total_protein;
		this.total_fat = total_fat;
		this.total_sugar = total_sugar;
		this.total_natrium = total_natrium;
		this.total_chole = total_chole;
		this.total_fattyacid = total_fattyacid;
		this.total_transfat = total_transfat;
	}

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

	
	public double getTotal_calory() {
		return total_calory;
	}

	public void setTotal_calory(double total_calory) {
		this.total_calory = total_calory;
	}

	public double getTotal_carbo() {
		return total_carbo;
	}

	public void setTotal_carbo(double total_carbo) {
		this.total_carbo = total_carbo;
	}

	public double getTotal_protein() {
		return total_protein;
	}

	public void setTotal_protein(double total_protein) {
		this.total_protein = total_protein;
	}

	public double getTotal_fat() {
		return total_fat;
	}

	public void setTotal_fat(double total_fat) {
		this.total_fat = total_fat;
	}

	public double getTotal_sugar() {
		return total_sugar;
	}

	public void setTotal_sugar(double total_sugar) {
		this.total_sugar = total_sugar;
	}

	public double getTotal_natrium() {
		return total_natrium;
	}

	public void setTotal_natrium(double total_natrium) {
		this.total_natrium = total_natrium;
	}

	public double getTotal_chole() {
		return total_chole;
	}

	public void setTotal_chole(double total_chole) {
		this.total_chole = total_chole;
	}

	public double getTotal_fattyacid() {
		return total_fattyacid;
	}

	public void setTotal_fattyacid(double total_fattyacid) {
		this.total_fattyacid = total_fattyacid;
	}

	public double getTotal_transfat() {
		return total_transfat;
	}

	public void setTotal_transfat(double total_transfat) {
		this.total_transfat = total_transfat;
	}

	@Override
	public String toString() {
		return "JJim [code=" + code + ", id=" + id + ", date=" + date + ", name=" + name + ", total_calory="
				+ total_calory + ", total_carbo=" + total_carbo + ", total_protein=" + total_protein + ", total_fat="
				+ total_fat + ", total_sugar=" + total_sugar + ", total_natrium=" + total_natrium + ", total_chole="
				+ total_chole + ", total_fattyacid=" + total_fattyacid + ", total_transfat=" + total_transfat + "]";
	}
	
	
	
	
}
