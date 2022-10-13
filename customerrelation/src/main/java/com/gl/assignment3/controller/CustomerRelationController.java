package com.gl.assignment3.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.assignment3.dao.CustomerDAO;
import com.gl.assignment3.entity.Customer;

@Controller
@RequestMapping("customers")
public class CustomerRelationController {
	
	@Autowired
	CustomerDAO customerDAO;
	
	@GetMapping("list")
	public String showCustomers(Model model)
	{
		List<Customer> customers = customerDAO.findAll();
		model.addAttribute("customers", customers);
		
		return "customerlist";
	}
	
	@GetMapping("showForm")
	public String showStudentForm(Model model)
	{
		Customer cus = new Customer();
		model.addAttribute("customer", cus);
		
		return "customerForm";
	}
	
	@PostMapping("save")
	public String saveCustomer(Model model, @ModelAttribute("customer") Customer cus)
	{
		customerDAO.saveCustomer(cus);
		return "redirect://customers/list";
	}
	

	@GetMapping("edit")
	public String updateCustomer(Model model, @RequestParam("id") int id)
	{
		Customer cus =customerDAO.findById(id) ;
		model.addAttribute("customer", cus);
		return "customerForm";
	}
	
	@GetMapping("delete")
	public String deleteCustomer(Model model, @RequestParam("id") int id)
	{
		customerDAO.deleteCustomer(id);
		return "redirect://customers/list";
	}

}
