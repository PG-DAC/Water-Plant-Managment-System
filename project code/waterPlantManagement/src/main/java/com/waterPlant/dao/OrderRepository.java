package com.waterPlant.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.waterPlant.pojo.Orders;
import com.waterPlant.pojo.Product;
import com.waterPlant.pojo.User;

public interface OrderRepository extends JpaRepository<Orders, Integer>{
	

	
	
	

}
