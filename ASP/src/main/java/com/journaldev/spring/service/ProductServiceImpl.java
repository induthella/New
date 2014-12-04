package com.journaldev.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.ProductDAO;
import com.journaldev.spring.model.Product;

@Service
public class ProductServiceImpl implements ProductService {
	
	private ProductDAO ProductDAO;

	public void setProductDAO(ProductDAO ProductDAO) {
		this.ProductDAO = ProductDAO;
	}

	@Override
	@Transactional
	public void addProduct(Product p,String pimgname) {
		System.out.println("Service add Product pimage"+pimgname);
		
		this.ProductDAO.addProduct(p,pimgname);
	}

	@Override
	@Transactional
	public void updateProduct(Product p) {
		this.ProductDAO.updateProduct(p);
	}

	@Override
	@Transactional
	public List<Product> listProducts() {
		System.out.println("Product Service list Products");
		return this.ProductDAO.listProducts();
	}

	@Override
	@Transactional
	public Product getProductById(int id) {
		return this.ProductDAO.getProductById(id);
	}

	@Override
	@Transactional
	public void removeProduct(int id) {
		this.ProductDAO.removeProduct(id);
	}

	@Override
	@Transactional
	public String getProduct(String username, String pwd) {
		// TODO Auto-generated method stub
		System.out.println("Service: getProduct");
		return this.ProductDAO.getProduct(username,pwd);
	}

	@Override
	@Transactional
	public Product[] getProducts() {
		// TODO Auto-generated method stub
		System.out.println("Service: getProducts");
		return this.ProductDAO.getProducts();
	}

	

}
