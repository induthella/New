package com.journaldev.spring.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf)
	{
		this.sessionFactory = sf;
	}
	

	@Override
	public void addPerson(Person p) {
		System.out.println("DAO : add person");
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("person list"+p);
		logger.info("Person saved successfully, Person Details="+p);
	}

	@Override
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Person updated successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Person> listPersons() {
		System.out.println("PersonDAO list persons");
		Session session = this.sessionFactory.getCurrentSession();
		List<Person> personsList = session.createQuery("from Person").list();
		for(Person p : personsList){
			logger.info("Person List::"+p);
			System.out.println("personlist: "+p);
		}
		
		return personsList;
	}

	@Override
	public Person getPersonById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Person p = (Person) session.load(Person.class, new Integer(id));
		logger.info("Person loaded successfully, Person details="+p);
		return p;
	}

	@Override
	public void removePerson(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details="+p);
	}

	private Session openSession() { 
		return sessionFactory.getCurrentSession(); 
		} 

	
	@Override
	public String getPerson(String username,String password) {
		
	System.out.println("DAO: getperson");
	Session session =this.sessionFactory.getCurrentSession();
	List users=session.createQuery("FROM Person").list();
	System.out.println("list of users"+users);
	
	for(Iterator iterator = users.iterator(); iterator.hasNext();)
	{
		Person p= (Person)iterator.next();
		if(p.getEmail().equals(username) && p.getPwd().equals(password))
		{
			System.out.println("logged in successfully");
			return "success";
		}
		else if(p.getEmail().equals("admin@gmail.com") && p.getPwd().equals("admin"))
		{
			System.out.println("admin logged in successfully");
			return "Admin";
		}
		
	}
	return "Admin";
	/* List userList = new ArrayList();
	Query query = openSession().createQuery("from Person p where p.username = :username"); 
	query.setParameter("username", username); 
	System.out.println("usermmmmmmmmmmmmm"+username);
	userList = query.list(); 

	if (userList.size() > 0) 
	return (Person) userList.get(0); 
	else
	return null;*/

	}


	@Override
	public String getUsername(String email) {
		// TODO Auto-generated method stub
		Session session =this.sessionFactory.getCurrentSession();
		List users=session.createQuery("FROM Person").list();
		System.out.println("list of users"+users);
		
		for(Iterator iterator = users.iterator(); iterator.hasNext();)
		{
			Person p= (Person)iterator.next();
			if(p.getEmail().equals(email))
			{
				System.out.println("get username");
				return p.getFirstname();
			}
		}
		return null;
	}

}
