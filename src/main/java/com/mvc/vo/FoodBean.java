package com.mvc.vo;

public class FoodBean {

	/**식품 코드*/
	private String code;
	/**식품 명*/
	private String name;
	/**식품 제조사*/
	private String maker;
	/**식품 재료*/
	private String material;
	/**식품 이미지 경로*/
	private String image;
	/**식품 섭취 개수*/
	private int count;
	
	public FoodBean() {
		super();
	}

	public FoodBean(String code, String name, String maker, String material, String image, int count) {
		super();
		this.code = code;
		this.name = name;
		this.maker = maker;
		this.material = material;
		this.image = image;
		this.count = count;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "FoodBean [code=" + code + ", name=" + name + ", maker=" + maker + ", material=" + material + ", image="
				+ image + ", count=" + count + "]";
	}
	
}
