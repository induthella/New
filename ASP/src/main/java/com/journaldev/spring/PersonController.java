package com.journaldev.spring;

import java.io.FileOutputStream;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.journaldev.spring.model.Person;
import com.journaldev.spring.model.Product;
import com.journaldev.spring.service.PersonService;
import com.journaldev.spring.service.ProductService;

import java.io.File;
import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

@Controller
@SessionAttributes("personObj")
public class PersonController {
	
	private PersonService personService;
	private ProductService productService;
	
	
	@RequestMapping(value = "wallclocksid", method = RequestMethod.GET)
	   public String redirect1() {
	     
	      return "redirect:/resources/wallclocks.html";
	   }
	@RequestMapping(value = "flowervasesid", method = RequestMethod.GET)
	   public String redirect2() {
	     
	      return "redirect:/resources/flowervases.html";
	   }
	@RequestMapping(value = "walldecorsid", method = RequestMethod.GET)
	   public String redirect3() {
	     
	      return "redirect:/resources/walldecors.html";
	   }
	@RequestMapping(value = "lightsid", method = RequestMethod.GET)
	   public String redirect4() {
	     
	      return "redirect:/resources/lights.html";
	   }
	
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps){
		this.personService = ps;
	}
	
	@Autowired(required=true)
	@Qualifier(value="productService")
	public void setProductService(ProductService pro){
	this.productService = pro;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexpg()
	{
		return "index";
	}
	
	
	
	
	
	 @RequestMapping("index")  
	 public ModelAndView getForm(@ModelAttribute Person p) {  
	  return new ModelAndView("index");  
	 }  
	 
	//For add and update person both
		@RequestMapping(value= "persons", method = RequestMethod.POST )
		public String addPerson(@ModelAttribute("person") Person p){
			
			System.out.println("added..................");
				this.personService.addPerson(p);
			
			
			return "redirect:/index";
			
		}
	 
	 @RequestMapping(value = "login",method = RequestMethod.GET)

	 public ModelAndView processRegistration(@RequestParam("email") String name,@RequestParam("pwd") String pwd,@ModelAttribute Person person )
	 {
		 ModelAndView modelAndView = new ModelAndView();
		 modelAndView.setViewName("index");
		 
		 ModelAndView modelAndView1 = new ModelAndView();
		 modelAndView1.setViewName("Admin");
		 modelAndView.addObject("personObj", person);
		 
	 System.out.println("login\nusername:"+name+" pwd:"+pwd);
	 String s=this.personService.getPerson(name, pwd);
	 String firstname=this.personService.getUsername(name);
	 person.setFirstname("Welcome "+firstname);
	
	 System.out.println("status :"+s);
	 if(s.equals("success"))
	 {
	 return modelAndView;
	 }
	 else if(s.equals("Admin"))
	 {
	 return modelAndView1;
	 }

	 else
	 return null;
	

	 }
	 
	
	//For add and update person both
	@RequestMapping(value= "product", method = RequestMethod.POST )
	public String addProduct(@ModelAttribute("product") Product pro,@RequestParam("pimage") String name,HttpSession session) 
	 {
		 System.out.println("PC add Controller pimage:"+name);
	
		System.out.println("Products added..................");
		this.productService.addProduct(pro,name);			
	
		return "redirect:/Admin";
			
		}
	
	
	@RequestMapping("/xyz")
	public ModelAndView is(@ModelAttribute Product p) {  
		System.out.println("xyz...................");
	//return new ModelAndView("data");
		return new ModelAndView("wallclocks");
	//return new ModelAndView("redirect:/resources/wallclocks.html");
	}  
	
	@ResponseBody
	@RequestMapping("/productslist")
	public Product[] data()
	{
		System.out.println("productlist........");
		
		Product a[]=new Product[2];
		a=this.productService.getProducts();
		System.out.println("pro");
		
		/*byte[] bAvatar = a[1].getPimage();
		 
		try{
		    FileOutputStream fos = new FileOutputStream("F:\\test.jpg");
		    fos.write(bAvatar);
		    fos.close();
		}catch(Exception e){
		    e.printStackTrace();
		}*/

		//System.out.println("pbrand :"+a[0].getPbrand());
		
	
		ObjectMapper mapper = new ObjectMapper();
		
	 
		try {
	 
			Object s=" var movies=[{'id':1,'name':'wall clcok','genre':'Time line','outline':'as','image':'wallclocks/page3-clock8.jpg','rating':10009,"+
			        "'director': 'Frank Darabont','year': 1994,'stars': ['Tim Robbins','Morgan Freeman','Bob Gunton'],"+
			        "'runtime': 142,'genre': 'Random','certificate': 'R','date': '1974-04-30T10:29:29+05:30','actor': 'Tim Robbins'}] ";
			
			System.out.println("sss: "+s);
			// convert user object to json string, and save to a file
			mapper.writeValue(new File("E:\\ASP\\WebContent\\resources\\Filters\\data\\user.json"), s);
	 
			// display to console
			System.out.println("mapper data: "+mapper.writeValueAsString(s));
			
				// read from file, convert it to user class
				//Product user = mapper.readValue(new File("E:\\ASP\\WebContent\\resources\\Filters\\data\\user.json"), Product.class);
		 
				// display to console
				//System.out.println("mapper .json data : "+user);
	 
		} catch (JsonGenerationException e) {
	 
			e.printStackTrace();
	 
		} catch (JsonMappingException e) {
	 
			e.printStackTrace();
	 
		} catch (IOException e) {
	 
			e.printStackTrace();
	 
		}
	 
		return a ;

	}
	
	
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
		
        this.personService.removePerson(id);
        return "redirect:/persons";
    }
 
    @RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        model.addAttribute("person", this.personService.getPersonById(id));
        model.addAttribute("listPersons", this.personService.listPersons());
        return "index";
    }
	
}
