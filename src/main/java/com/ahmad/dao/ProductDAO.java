package com.ahmad.dao;

import java.util.List;

import com.ahmad.model.Product;

public interface ProductDAO {

	void saveOrUpdate(Product product);
	
	void delete(String id);
	
	Product get(String id);
	
	List<Product> listProduct();
	
	
	
}
