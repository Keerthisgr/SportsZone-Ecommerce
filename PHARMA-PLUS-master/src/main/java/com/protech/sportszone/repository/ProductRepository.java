package com.protech.sportszone.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.protech.sportszone.dto.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> 
{

	List<Product> findByName(String name);

}
