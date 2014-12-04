package com.journaldev.spring.dao;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf)
	{
		this.sessionFactory = sf;
	}
	

	@Override
	public void addProduct(Product p,String pimgname) {
		System.out.println("DAO : add Product");
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("DAO pimage name"+pimgname);
		Product p1 = (Product)session.get(Product.class, p.getPid());
		System.out.println("image name"+pimgname);
		File file = new File("E:\\ASP\\WebContent\\resources\\images\\"+pimgname);
		
		byte[] bFile = new byte[(int) file.length()];
		try {
	
				FileInputStream fileInputStream = new FileInputStream(file);
				fileInputStream.read(bFile);
				fileInputStream.close();
			} catch (Exception e) {
			e.printStackTrace();
			}
		System.out.println("bfile"+bFile+"----");
		
		p1.setPimage(bFile);
		session.update(p1); 
		System.out.println("Product list"+p);
		logger.info("Product saved successfully, Product Details="+p);
	}

	@Override
	public void updateProduct(Product p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Product updated successfully, Product Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> listProducts() {
		System.out.println("ProductDAO list Products");
		Session session = this.sessionFactory.getCurrentSession();
		List<Product> ProductList = session.createQuery("from Product").list();
		for(Product p : ProductList){
			logger.info("Product List::"+p);
			System.out.println("Productlist: "+p);
		}
		
		return ProductList;
	}

	@Override
	public Product getProductById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Product p = (Product) session.load(Product.class, new Integer(id));
		logger.info("Product loaded successfully, Product details="+p);
		return p;
	}

	@Override
	public void removeProduct(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Product p = (Product) session.load(Product.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Product deleted successfully, Product details="+p);
	}

	private Session openSession() { 
		return sessionFactory.getCurrentSession(); 
		} 

	
	@Override
	public String getProduct(String username,String password) {
		return password;
		
	

	}



	@Override
	public Product[] getProducts() {
		String res="";
		Session session = this.sessionFactory.getCurrentSession();
		List users = session.createQuery("FROM Product").list(); 
		System.out.println("users:  "+users);
		int i=0;
		Product ary[] = new Product[2];
		for (Iterator iterator = users.iterator(); iterator.hasNext();)
		{
			System.out.println("enhsdfsd");
			Product p = (Product) iterator.next();
			//System.out.println("brandsds:"+p.getPbrand());
			ary[i++]=p;
			res=res+p.toString();			
			System.out.println("getpro");
		}
		return ary;

		}
	




}
