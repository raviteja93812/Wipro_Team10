package com.wipro.hrms.repos;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.hrms.models.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
	
	List<Product> findByDeletedOrderByProdidDesc(boolean isdeleted);
	
	List<Product> findByCatidOrderByProdidDesc(int catid);
	
//	List<Product> findByExpirydateLessThanEqualOrderByExpirydateDesc(LocalDate date);
}
