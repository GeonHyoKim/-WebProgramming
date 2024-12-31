package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {
		Product blue = new Product("BlueHouse", "김건효", 1054402281);
		blue.setDescription("충청남도 논산시 와야길 6-3 블루하우스 201호");
		blue.setCategory("Three Room");
		blue.setManufacturer("대운");
		blue.setCondition("2022 리모델링");
		blue.setFilename("111.jfif");
		
		Product jg = new Product("JG", "남상혁", 1012345678);
		jg.setDescription("충청남도 논산시 와야길 8 JG빌딩 202호");
		jg.setCategory("Two Room");
		jg.setManufacturer("대운");
		jg.setCondition("2106 리모델링");
		jg.setFilename("222.jfif");
		
		Product green = new Product("GreenHouse", "박병윤", 1087654321);
		green.setDescription("충청남도 논산시 와야길 6-2 그린하우스 301호");
		green.setCategory("One room");
		green.setManufacturer("대운");
		green.setCondition("2018 리모델링");
		green.setFilename("333.jfif");
		
		listOfProducts.add(blue);
		listOfProducts.add(jg);
		listOfProducts.add(green);
		
		
	}
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	public Product getProductById(String productId) {
		Product productById =null;
		
		for (int i = 0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) 
			{
				productById = product;
				break;
				
			}
		}
		return productById;
	}
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
