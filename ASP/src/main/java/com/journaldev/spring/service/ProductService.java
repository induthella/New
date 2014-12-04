package com.journaldev.spring.service;

import java.util.List;

import com.journaldev.spring.model.Product;

public interface ProductService {

	//public void addProduct(Product p);
	public void updateProduct(Product p);
	public List<Product> listProducts();
	public Product getProductById(int id);
	public void removeProduct(int id);
	public String getProduct(String username, String pwd);
	public Product[] getProducts();
	void addProduct(Product p, String pimgname);
	
}
