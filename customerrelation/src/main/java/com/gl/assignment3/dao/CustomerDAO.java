package com.gl.assignment3.dao;

import java.util.List;

import com.gl.assignment3.entity.Customer;

public interface CustomerDAO {
	
	public void saveCustomer(Customer cus);
	public void deleteCustomer(int id);
	public Customer findById (int id);
	public List<Customer> findAll ();
	

}
