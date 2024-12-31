package dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	private static final long serialVersion =4274700572038677000L;
	
	private String productId; 
	private String pname;
	private Integer number;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInStock;
	private String condition; 
	private String filename; 

	public Product() {
		super();
	}
	
	public Product(String productId, String pname, Integer number) {
		this.productId = productId;
		this.pname = pname;
		this.number = number;
	}
	public String getProductId() {
		return productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitsInStock() {
		return unitsInStock;
	}
	public void setUnitsInstock(long unitsInstock) {
		this.unitsInStock = unitsInstock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename){
		this.filename = filename;
	}
}

