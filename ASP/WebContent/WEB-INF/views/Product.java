package com.journaldev.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 * @author 
 *
 */
@Entity
@Table(name="Products")
public class Product {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int pid;
	private String pname;
	private String pbrand;
	private String pdesc;
	
	@Lob
	@Column(columnDefinition="mediumblob")
	private byte[] pimage;
	
	private int price;

		public int getPid() {
			return pid;
		}

		public void setPid(int pid) {
			this.pid = pid;
		}

		public String getPname() {
			return pname;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}

		public String getPbrand() {
			return pbrand;
		}

		public void setPbrand(String pbrand) {
			this.pbrand = pbrand;
		}

		public String getPdesc() {
			return pdesc;
		}

		public void setPdesc(String pdesc) {
			this.pdesc = pdesc;
		}

		public byte[] getPimage() {
			return pimage;
		}

		public void setPimage(byte[] pimage) {
			this.pimage = pimage;
		}

	
		@Override
		public String toString(){
			return "pid="+pid+"pname="+pname+"pbrand="+pbrand+"pdesc="+pdesc+"pimage="+pimage;
		}

		public int getPrice() {
			return price;
		}

		public void setPrice(int price) {
			this.price = price;
		}

	
}

