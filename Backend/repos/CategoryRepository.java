package com.wipro.hrms.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wipro.hrms.models.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
